
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* esp_http_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_4__ {char* username; } ;
struct TYPE_5__ {TYPE_1__ connection_info; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;

esp_err_t esp_http_client_get_username(esp_http_client_handle_t client, char **value)
{
    if (client == ((void*)0) || value == ((void*)0)) {
        ESP_LOGE(TAG, "client or value must not be NULL");
        return ESP_ERR_INVALID_ARG;
    }
    *value = client->connection_info.username;
    return ESP_OK;
}
