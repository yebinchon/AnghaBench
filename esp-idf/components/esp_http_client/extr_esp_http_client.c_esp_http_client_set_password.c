
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* esp_http_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_4__ {int * password; } ;
struct TYPE_5__ {TYPE_1__ connection_info; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int free (int *) ;
 int memset (int *,int ,int ) ;
 int * strdup (char*) ;
 int strlen (int *) ;

esp_err_t esp_http_client_set_password(esp_http_client_handle_t client, char *password)
{
    if (client == ((void*)0)) {
        ESP_LOGE(TAG, "client must not be NULL");
        return ESP_ERR_INVALID_ARG;
    }
    if (password == ((void*)0) && client->connection_info.password != ((void*)0)) {
        memset(client->connection_info.password, 0, strlen(client->connection_info.password));
        free(client->connection_info.password);
        client->connection_info.password = ((void*)0);
    } else if (password != ((void*)0)) {
        client->connection_info.password = strdup(password);
    }
    return ESP_OK;
}
