
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * esp_timer_handle_t ;
struct TYPE_3__ {int * timer; } ;


 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int app_prov_stop_service () ;
 int esp_timer_delete (int *) ;
 int free (TYPE_1__*) ;
 TYPE_1__* g_prov ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void stop_prov_task(void * arg)
{
    ESP_LOGI(TAG, "Stopping provisioning");
    app_prov_stop_service();


    esp_timer_handle_t timer = g_prov->timer;
    esp_timer_delete(timer);
    g_prov->timer = ((void*)0);


    free(g_prov);
    g_prov = ((void*)0);
    ESP_LOGI(TAG, "Provisioning stopped");

    vTaskDelete(((void*)0));
}
