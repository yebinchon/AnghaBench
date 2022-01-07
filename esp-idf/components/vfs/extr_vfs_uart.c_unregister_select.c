
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uart_select_args_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int ** realloc (int **,int const) ;
 int s_registered_select_lock ;
 int s_registered_select_num ;
 int ** s_registered_selects ;

__attribute__((used)) static esp_err_t unregister_select(uart_select_args_t *args)
{
    esp_err_t ret = ESP_OK;
    if (args) {
        ret = ESP_ERR_INVALID_STATE;
        portENTER_CRITICAL(&s_registered_select_lock);
        for (int i = 0; i < s_registered_select_num; ++i) {
            if (s_registered_selects[i] == args) {
                const int new_size = s_registered_select_num - 1;


                s_registered_selects[i] = s_registered_selects[new_size];
                s_registered_selects = realloc(s_registered_selects, new_size * sizeof(uart_select_args_t *));
                if (s_registered_selects || new_size == 0) {
                    s_registered_select_num = new_size;
                    ret = ESP_OK;
                } else {
                    ret = ESP_ERR_NO_MEM;
                }
                break;
            }
        }
        portEXIT_CRITICAL(&s_registered_select_lock);
    }
    return ret;
}
