
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* esp_http_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_7__ {scalar_t__ redirect_counter; scalar_t__ max_redirection_count; int process_again; TYPE_1__* response; scalar_t__ disable_auto_redirect; } ;
struct TYPE_6__ {int status_code; } ;


 int ESP_ERR_HTTP_MAX_REDIRECT ;
 int ESP_LOGE (int ,char*,scalar_t__) ;
 int ESP_OK ;



 int TAG ;
 int esp_http_client_add_auth (TYPE_2__*) ;
 int esp_http_client_set_redirection (TYPE_2__*) ;

__attribute__((used)) static esp_err_t esp_http_check_response(esp_http_client_handle_t client)
{
    if (client->redirect_counter >= client->max_redirection_count || client->disable_auto_redirect) {
        ESP_LOGE(TAG, "Error, reach max_redirection_count count=%d", client->redirect_counter);
        return ESP_ERR_HTTP_MAX_REDIRECT;
    }
    switch (client->response->status_code) {
        case 129:
        case 130:
            esp_http_client_set_redirection(client);
            client->redirect_counter ++;
            client->process_again = 1;
            break;
        case 128:
            esp_http_client_add_auth(client);
    }
    return ESP_OK;
}
