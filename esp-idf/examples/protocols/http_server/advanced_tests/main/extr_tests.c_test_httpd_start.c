
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * httpd_handle_t ;
struct TYPE_4__ {int max_uri_handlers; int server_port; int max_open_sockets; int stack_size; } ;
typedef TYPE_1__ httpd_config_t ;


 int CONFIG_LWIP_MAX_SOCKETS ;
 int ESP_LOGI (int ,char*,int) ;
 scalar_t__ ESP_OK ;
 TYPE_1__ HTTPD_DEFAULT_CONFIG () ;
 int HTTPD_MAX_REQ_HDR_LEN ;
 int HTTPD_MAX_URI_LEN ;
 int TAG ;
 int esp_get_free_heap_size () ;
 scalar_t__ httpd_start (int **,TYPE_1__*) ;
 int pre_start_mem ;

__attribute__((used)) static httpd_handle_t test_httpd_start(void)
{
    pre_start_mem = esp_get_free_heap_size();
    httpd_handle_t hd;
    httpd_config_t config = HTTPD_DEFAULT_CONFIG();

    config.max_uri_handlers = 9;
    config.server_port = 1234;


    config.max_open_sockets = (CONFIG_LWIP_MAX_SOCKETS - 3);

    if (httpd_start(&hd, &config) == ESP_OK) {
        ESP_LOGI(TAG, "Started HTTP server on port: '%d'", config.server_port);
        ESP_LOGI(TAG, "Max URI handlers: '%d'", config.max_uri_handlers);
        ESP_LOGI(TAG, "Max Open Sessions: '%d'", config.max_open_sockets);
        ESP_LOGI(TAG, "Max Header Length: '%d'", HTTPD_MAX_REQ_HDR_LEN);
        ESP_LOGI(TAG, "Max URI Length: '%d'", HTTPD_MAX_URI_LEN);
        ESP_LOGI(TAG, "Max Stack Size: '%d'", config.stack_size);
        return hd;
    }
    return ((void*)0);
}
