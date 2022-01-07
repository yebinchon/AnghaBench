
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int server_port; int open_fn; int global_transport_ctx_free_fn; int * global_transport_ctx; } ;
struct httpd_ssl_config {scalar_t__ transport_mode; TYPE_1__ httpd; int port_insecure; int port_secure; } ;
typedef int * httpd_handle_t ;
typedef int esp_tls_cfg_server_t ;
typedef int esp_err_t ;


 int ESP_LOGD (int ,char*) ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_OK ;
 scalar_t__ HTTPD_SSL_TRANSPORT_SECURE ;
 int TAG ;
 int assert (int ) ;
 int * create_secure_context (struct httpd_ssl_config*) ;
 int free_secure_context ;
 int httpd_ssl_open ;
 int httpd_start (int **,TYPE_1__*) ;

esp_err_t httpd_ssl_start(httpd_handle_t *pHandle, struct httpd_ssl_config *config)
{
    assert(config != ((void*)0));
    assert(pHandle != ((void*)0));

    ESP_LOGI(TAG, "Starting server");

    if (HTTPD_SSL_TRANSPORT_SECURE == config->transport_mode) {

        esp_tls_cfg_server_t *esp_tls_cfg = create_secure_context(config);
        if (!esp_tls_cfg) {
            return -1;
        }

        ESP_LOGD(TAG, "SSL context ready");


        config->httpd.global_transport_ctx = esp_tls_cfg;
        config->httpd.global_transport_ctx_free_fn = free_secure_context;
        config->httpd.open_fn = httpd_ssl_open;

        config->httpd.server_port = config->port_secure;
    } else {
        ESP_LOGD(TAG, "SSL disabled, using plain HTTP");
        config->httpd.server_port = config->port_insecure;
    }

    httpd_handle_t handle = ((void*)0);

    esp_err_t ret = httpd_start(&handle, &config->httpd);
    if (ret != ESP_OK) return ret;

    *pHandle = handle;

    ESP_LOGI(TAG, "Server listening on port %d", config->httpd.server_port);
    return ESP_OK;
}
