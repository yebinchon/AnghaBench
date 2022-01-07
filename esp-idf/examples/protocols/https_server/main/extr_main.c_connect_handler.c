
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int * httpd_handle_t ;
typedef int esp_event_base_t ;


 int * start_webserver () ;

__attribute__((used)) static void connect_handler(void* arg, esp_event_base_t event_base,
                            int32_t event_id, void* event_data)
{
    httpd_handle_t* server = (httpd_handle_t*) arg;
    if (*server == ((void*)0)) {
        *server = start_webserver();
    }
}
