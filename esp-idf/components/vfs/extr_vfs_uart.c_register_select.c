
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uart_select_args_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int ** realloc (int **,int const) ;
 int s_registered_select_lock ;
 int s_registered_select_num ;
 int ** s_registered_selects ;

__attribute__((used)) static esp_err_t register_select(uart_select_args_t *args)
{
    esp_err_t ret = ESP_ERR_INVALID_ARG;

    if (args) {
        portENTER_CRITICAL(&s_registered_select_lock);
        const int new_size = s_registered_select_num + 1;
        if ((s_registered_selects = realloc(s_registered_selects, new_size * sizeof(uart_select_args_t *))) == ((void*)0)) {
            ret = ESP_ERR_NO_MEM;
        } else {
            s_registered_selects[s_registered_select_num] = args;
            s_registered_select_num = new_size;
            ret = ESP_OK;
        }
        portEXIT_CRITICAL(&s_registered_select_lock);
    }

    return ret;
}
