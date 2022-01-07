
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* subprotocol; struct TYPE_6__* password; struct TYPE_6__* username; struct TYPE_6__* scheme; struct TYPE_6__* path; struct TYPE_6__* uri; struct TYPE_6__* host; } ;
typedef TYPE_1__ websocket_config_storage_t ;
typedef TYPE_2__* esp_websocket_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_7__ {TYPE_1__* config; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static esp_err_t esp_websocket_client_destroy_config(esp_websocket_client_handle_t client)
{
    if (client == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    websocket_config_storage_t *cfg = client->config;
    if (client->config == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    free(cfg->host);
    free(cfg->uri);
    free(cfg->path);
    free(cfg->scheme);
    free(cfg->username);
    free(cfg->password);
    free(cfg->subprotocol);
    memset(cfg, 0, sizeof(websocket_config_storage_t));
    free(client->config);
    client->config = ((void*)0);
    return ESP_OK;
}
