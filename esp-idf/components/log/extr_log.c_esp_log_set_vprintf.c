
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vprintf_like_t ;


 int portMAX_DELAY ;
 scalar_t__ s_log_mutex ;
 int s_log_print_func ;
 scalar_t__ xSemaphoreCreateMutex () ;
 int xSemaphoreGive (scalar_t__) ;
 int xSemaphoreTake (scalar_t__,int ) ;

vprintf_like_t esp_log_set_vprintf(vprintf_like_t func)
{
    if (!s_log_mutex) {
        s_log_mutex = xSemaphoreCreateMutex();
    }
    xSemaphoreTake(s_log_mutex, portMAX_DELAY);

    vprintf_like_t orig_func = s_log_print_func;
    s_log_print_func = func;

    xSemaphoreGive(s_log_mutex);
    return orig_func;
}
