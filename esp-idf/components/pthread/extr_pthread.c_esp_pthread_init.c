
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int esp_pthread_cfg_key_destructor ;
 scalar_t__ pthread_key_create (int *,int ) ;
 int pthread_key_delete (int ) ;
 int s_pthread_cfg_key ;
 int * s_threads_mux ;
 int * xSemaphoreCreateMutex () ;

esp_err_t esp_pthread_init(void)
{
    if (pthread_key_create(&s_pthread_cfg_key, esp_pthread_cfg_key_destructor) != 0) {
        return ESP_ERR_NO_MEM;
    }
    s_threads_mux = xSemaphoreCreateMutex();
    if (s_threads_mux == ((void*)0)) {
        pthread_key_delete(s_pthread_cfg_key);
        return ESP_ERR_NO_MEM;
    }
    return ESP_OK;
}
