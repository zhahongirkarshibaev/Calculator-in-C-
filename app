using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Калькулятор
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public string D;
        public string N1;
        public bool n2;
        public MainWindow()
        {
            n2 = false;
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if(n2)
            {
                n2 = false;
                text.Text = "0";
            }
            Button button = (Button)sender;
            if ("0".Equals(text.Text))
            {
                text.Text = "";
            }
            text.Text = text.Text + button.Content.ToString();
        }
        private void Command(object sender, RoutedEventArgs e)
        {
            Button button = (Button)(sender);
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            text.Text = "0";
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Button button = (Button)sender;
            D = button.Content.ToString();
            N1 = text.Text;
            n2 = true;
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            double dn1, dn2, res;
            dn1 = Convert.ToDouble(N1);
            dn2 = Convert.ToDouble(text.Text);
            res = 0;
            if (D == "+")
            {
                res = dn1 + dn2;
            }
            if (D == "-")
            {
                res = dn1 - dn2;
            }
            if (D == "*")
            {
                res = dn1 * dn2;
            }
            if (D == "/")
            {
                res = dn1 / dn2;
            }
            D = "=";
            n2 = true;
            text.Text = res.ToString();
        }
    }
}
