
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uart_select_args_t ;
typedef int esp_err_t ;


 int UART_NUM ;
 int free (int *) ;
 int portENTER_CRITICAL (int ) ;
 int portEXIT_CRITICAL (int ) ;
 int uart_get_selectlock () ;
 int uart_set_select_notif_callback (int,int *) ;
 int unregister_select (int *) ;

__attribute__((used)) static esp_err_t uart_end_select(void *end_select_args)
{
    uart_select_args_t *args = end_select_args;

    portENTER_CRITICAL(uart_get_selectlock());
    esp_err_t ret = unregister_select(args);
    for (int i = 0; i < UART_NUM; ++i) {
        uart_set_select_notif_callback(i, ((void*)0));
    }
    portEXIT_CRITICAL(uart_get_selectlock());

    if (args) {
        free(args);
    }

    return ret;
}
