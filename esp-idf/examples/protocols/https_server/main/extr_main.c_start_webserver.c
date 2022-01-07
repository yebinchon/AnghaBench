
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char const* cacert_pem; int cacert_len; unsigned char const* prvtkey_pem; int prvtkey_len; } ;
typedef TYPE_1__ httpd_ssl_config_t ;
typedef int * httpd_handle_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 TYPE_1__ HTTPD_SSL_CONFIG_DEFAULT () ;
 int TAG ;
 int httpd_register_uri_handler (int *,int *) ;
 scalar_t__ httpd_ssl_start (int **,TYPE_1__*) ;
 int root ;

__attribute__((used)) static httpd_handle_t start_webserver(void)
{
    httpd_handle_t server = ((void*)0);


    ESP_LOGI(TAG, "Starting server");

    httpd_ssl_config_t conf = HTTPD_SSL_CONFIG_DEFAULT();

    extern const unsigned char cacert_pem_start[] asm("_binary_cacert_pem_start");
    extern const unsigned char cacert_pem_end[] asm("_binary_cacert_pem_end");
    conf.cacert_pem = cacert_pem_start;
    conf.cacert_len = cacert_pem_end - cacert_pem_start;

    extern const unsigned char prvtkey_pem_start[] asm("_binary_prvtkey_pem_start");
    extern const unsigned char prvtkey_pem_end[] asm("_binary_prvtkey_pem_end");
    conf.prvtkey_pem = prvtkey_pem_start;
    conf.prvtkey_len = prvtkey_pem_end - prvtkey_pem_start;

    esp_err_t ret = httpd_ssl_start(&server, &conf);
    if (ESP_OK != ret) {
        ESP_LOGI(TAG, "Error starting server!");
        return ((void*)0);
    }


    ESP_LOGI(TAG, "Registering URI handlers");
    httpd_register_uri_handler(server, &root);
    return server;
}
