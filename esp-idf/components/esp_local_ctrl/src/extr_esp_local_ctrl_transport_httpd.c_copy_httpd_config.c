
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int httpd_ssl_config_t ;
struct TYPE_4__ {int httpd; } ;
typedef TYPE_1__ esp_local_ctrl_transport_config_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int calloc (int,int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static esp_err_t copy_httpd_config(esp_local_ctrl_transport_config_t *dest_config, const esp_local_ctrl_transport_config_t *src_config)
{
    if (!dest_config || !src_config || !src_config->httpd) {
        ESP_LOGE(TAG, "NULL configuration provided");
        return ESP_ERR_INVALID_ARG;
    }

    dest_config->httpd = calloc(1, sizeof(httpd_ssl_config_t));
    if (!dest_config->httpd) {
        ESP_LOGE(TAG, "Failed to allocate memory for HTTPD transport config");
        return ESP_ERR_NO_MEM;
    }
    memcpy(dest_config->httpd,
           src_config->httpd,
           sizeof(httpd_ssl_config_t));
    return ESP_OK;
}
