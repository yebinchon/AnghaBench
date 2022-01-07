
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_BT_HCI_UART_NO ;
 int ESP_LOGI (int ,char*,int ) ;
 int PERIPH_UART1_MODULE ;
 int PERIPH_UART2_MODULE ;
 int PERIPH_UHCI0_MODULE ;
 int periph_module_enable (int ) ;
 int tag ;
 int uart_set_pin (int ,int,int,int,int) ;

__attribute__((used)) static void uart_gpio_reset(void)
{





    periph_module_enable(PERIPH_UHCI0_MODULE);






}
