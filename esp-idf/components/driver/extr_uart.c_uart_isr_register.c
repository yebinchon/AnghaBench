
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uart_port_t ;
typedef int uart_isr_handle_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ETS_UART0_INTR_SOURCE ;
 int ETS_UART1_INTR_SOURCE ;
 int ETS_UART2_INTR_SOURCE ;
 int UART_CHECK (int,char*,int ) ;
 int UART_ENTER_CRITICAL (int *) ;
 int UART_EXIT_CRITICAL (int *) ;



 size_t UART_NUM_MAX ;
 int esp_intr_alloc (int ,int,void (*) (void*),void*,int *) ;
 int * uart_spinlock ;

esp_err_t uart_isr_register(uart_port_t uart_num, void (*fn)(void *), void *arg, int intr_alloc_flags, uart_isr_handle_t *handle)
{
    int ret;
    UART_CHECK((uart_num < UART_NUM_MAX), "uart_num error", ESP_FAIL);
    UART_ENTER_CRITICAL(&uart_spinlock[uart_num]);
    switch(uart_num) {
        case 129:
            ret=esp_intr_alloc(ETS_UART1_INTR_SOURCE, intr_alloc_flags, fn, arg, handle);
            break;





        case 130:
            default:
            ret=esp_intr_alloc(ETS_UART0_INTR_SOURCE, intr_alloc_flags, fn, arg, handle);
            break;
    }
    UART_EXIT_CRITICAL(&uart_spinlock[uart_num]);
    return ret;
}
