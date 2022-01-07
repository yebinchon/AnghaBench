
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int http_client; } ;
typedef TYPE_1__ esp_https_ota_t ;
typedef scalar_t__ esp_https_ota_handle_t ;


 int esp_http_client_is_complete_data_received (int ) ;

bool esp_https_ota_is_complete_data_received(esp_https_ota_handle_t https_ota_handle)
{
    esp_https_ota_t *handle = (esp_https_ota_t *)https_ota_handle;
    return esp_http_client_is_complete_data_received(handle->http_client);
}
