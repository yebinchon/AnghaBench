
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int portMAX_DELAY ;
 int * s_list_lock ;
 int * xSemaphoreCreateMutex () ;
 int xSemaphoreTake (int *,int ) ;

esp_err_t esp_netif_list_lock(void)
{
    if (s_list_lock == ((void*)0)) {
        s_list_lock = xSemaphoreCreateMutex();
        if (s_list_lock == ((void*)0)) {
            return ESP_ERR_NO_MEM;
        }
    }
    xSemaphoreTake(s_list_lock, portMAX_DELAY);
    return ESP_OK;
}
