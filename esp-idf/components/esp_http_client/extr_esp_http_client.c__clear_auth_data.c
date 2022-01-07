
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* esp_http_client_handle_t ;
typedef int esp_http_auth_data_t ;
typedef int esp_err_t ;
struct TYPE_5__ {int opaque; int nonce; int qop; int algorithm; int realm; int method; } ;
struct TYPE_4__ {TYPE_2__* auth_data; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 int free (int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static esp_err_t _clear_auth_data(esp_http_client_handle_t client)
{
    if (client->auth_data == ((void*)0)) {
        return ESP_FAIL;
    }

    free(client->auth_data->method);
    free(client->auth_data->realm);
    free(client->auth_data->algorithm);
    free(client->auth_data->qop);
    free(client->auth_data->nonce);
    free(client->auth_data->opaque);
    memset(client->auth_data, 0, sizeof(esp_http_auth_data_t));
    return ESP_OK;
}
