
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int * httpd_handle_t ;
typedef int esp_event_base_t ;


 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int stop_webserver (int *) ;

__attribute__((used)) static void disconnect_handler(void* arg, esp_event_base_t event_base,
                               int32_t event_id, void* event_data)
{
    httpd_handle_t* server = (httpd_handle_t*) arg;
    if (*server) {
        ESP_LOGI(TAG, "Stopping webserver");
        stop_webserver(*server);
        *server = ((void*)0);
    }
}
