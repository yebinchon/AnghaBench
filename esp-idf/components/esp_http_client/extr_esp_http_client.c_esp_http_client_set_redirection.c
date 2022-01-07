
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* esp_http_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_4__ {int * location; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGD (int ,char*,int *) ;
 int TAG ;
 int esp_http_client_set_url (TYPE_1__*,int *) ;

esp_err_t esp_http_client_set_redirection(esp_http_client_handle_t client)
{
    if (client == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    if (client->location == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    ESP_LOGD(TAG, "Redirect to %s", client->location);
    return esp_http_client_set_url(client, client->location);
}
