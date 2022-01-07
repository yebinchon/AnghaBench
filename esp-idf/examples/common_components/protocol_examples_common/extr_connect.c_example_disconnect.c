
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_LOGI (int ,char*,int *) ;
 int ESP_OK ;
 int TAG ;
 int * s_connect_event_group ;
 int * s_connection_name ;
 int stop () ;
 int vEventGroupDelete (int *) ;

esp_err_t example_disconnect(void)
{
    if (s_connect_event_group == ((void*)0)) {
        return ESP_ERR_INVALID_STATE;
    }
    vEventGroupDelete(s_connect_event_group);
    s_connect_event_group = ((void*)0);
    stop();
    ESP_LOGI(TAG, "Disconnected from %s", s_connection_name);
    s_connection_name = ((void*)0);
    return ESP_OK;
}
