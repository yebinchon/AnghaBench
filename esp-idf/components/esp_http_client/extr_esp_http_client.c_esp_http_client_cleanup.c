
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* esp_http_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_7__ {struct TYPE_7__* auth_header; struct TYPE_7__* location; struct TYPE_7__* current_header_key; struct TYPE_7__* auth_data; struct TYPE_7__* parser_settings; struct TYPE_7__* parser; struct TYPE_7__* response; struct TYPE_7__* buffer; struct TYPE_7__* data; int headers; struct TYPE_7__* request; int transport_list; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 int _clear_auth_data (TYPE_1__*) ;
 int _clear_connection_info (TYPE_1__*) ;
 int esp_http_client_close (TYPE_1__*) ;
 int esp_transport_list_destroy (int ) ;
 int free (TYPE_1__*) ;
 int http_header_destroy (int ) ;

esp_err_t esp_http_client_cleanup(esp_http_client_handle_t client)
{
    if (client == ((void*)0)) {
        return ESP_FAIL;
    }
    esp_http_client_close(client);
    esp_transport_list_destroy(client->transport_list);
    http_header_destroy(client->request->headers);
    free(client->request->buffer->data);
    free(client->request->buffer);
    free(client->request);
    http_header_destroy(client->response->headers);
    free(client->response->buffer->data);
    free(client->response->buffer);
    free(client->response);

    free(client->parser);
    free(client->parser_settings);
    _clear_connection_info(client);
    _clear_auth_data(client);
    free(client->auth_data);
    free(client->current_header_key);
    free(client->location);
    free(client->auth_header);
    free(client);
    return ESP_OK;
}
