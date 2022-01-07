
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* esp_http_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_5__ {char* post_data; int post_len; } ;


 int ESP_LOGD (int ,char*,int) ;
 int ESP_OK ;
 int TAG ;
 int esp_http_client_get_header (TYPE_1__*,char*,char**) ;
 int esp_http_client_set_header (TYPE_1__*,char*,char*) ;

esp_err_t esp_http_client_set_post_field(esp_http_client_handle_t client, const char *data, int len)
{
    esp_err_t err = ESP_OK;
    client->post_data = (char *)data;
    client->post_len = len;
    ESP_LOGD(TAG, "set post file length = %d", len);
    if (client->post_data) {
        char *value = ((void*)0);
        if ((err = esp_http_client_get_header(client, "Content-Type", &value)) != ESP_OK) {
            return err;
        }
        if (value == ((void*)0)) {
            err = esp_http_client_set_header(client, "Content-Type", "application/x-www-form-urlencoded");
        }
    } else {
        client->post_len = 0;
        err = esp_http_client_set_header(client, "Content-Type", ((void*)0));
    }
    return err;
}
