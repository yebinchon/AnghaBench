
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* esp_http_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_5__ {int post_len; } ;


 int ESP_OK ;
 int esp_http_client_connect (TYPE_1__*) ;
 int esp_http_client_request_send (TYPE_1__*,int) ;

esp_err_t esp_http_client_open(esp_http_client_handle_t client, int write_len)
{
    client->post_len = write_len;
    esp_err_t err;
    if ((err = esp_http_client_connect(client)) != ESP_OK) {
        return err;
    }
    if ((err = esp_http_client_request_send(client, write_len)) != ESP_OK) {
        return err;
    }
    return ESP_OK;
}
