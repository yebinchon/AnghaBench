
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * httpd_handle_t ;
struct TYPE_4__ {int server_port; } ;
typedef TYPE_1__ httpd_config_t ;


 int ESP_LOGI (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 TYPE_1__ HTTPD_DEFAULT_CONFIG () ;
 int TAG ;
 int ctrl ;
 int echo ;
 int hello ;
 int httpd_register_uri_handler (int *,int *) ;
 scalar_t__ httpd_start (int **,TYPE_1__*) ;

__attribute__((used)) static httpd_handle_t start_webserver(void)
{
    httpd_handle_t server = ((void*)0);
    httpd_config_t config = HTTPD_DEFAULT_CONFIG();


    ESP_LOGI(TAG, "Starting server on port: '%d'", config.server_port);
    if (httpd_start(&server, &config) == ESP_OK) {

        ESP_LOGI(TAG, "Registering URI handlers");
        httpd_register_uri_handler(server, &hello);
        httpd_register_uri_handler(server, &echo);
        httpd_register_uri_handler(server, &ctrl);
        return server;
    }

    ESP_LOGI(TAG, "Error starting server!");
    return ((void*)0);
}
