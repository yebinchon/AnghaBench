
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uart_port_t ;
typedef int periph_module_t ;


 int PERIPH_UART0_MODULE ;
 int PERIPH_UART1_MODULE ;
 int PERIPH_UART2_MODULE ;
 scalar_t__ UART_NUM_0 ;
 scalar_t__ UART_NUM_1 ;
 scalar_t__ UART_NUM_2 ;
 int assert (int) ;

__attribute__((used)) static periph_module_t get_periph_module(uart_port_t uart_num)
{
    periph_module_t periph_module = PERIPH_UART0_MODULE;
    if (uart_num == UART_NUM_0) {
        periph_module = PERIPH_UART0_MODULE;
    } else if (uart_num == UART_NUM_1) {
        periph_module = PERIPH_UART1_MODULE;
    }





    else {
        assert(0 && "uart_num error");
    }
    return periph_module;
}
