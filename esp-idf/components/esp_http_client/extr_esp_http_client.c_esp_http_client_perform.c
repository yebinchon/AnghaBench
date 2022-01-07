
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_2__* esp_http_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_14__ {int state; int first_line_prepared; int parser; int is_async; TYPE_1__* response; int is_chunk_complete; int post_len; scalar_t__ process_again; } ;
struct TYPE_13__ {int content_length; int data_process; int is_chunked; } ;


 int EAGAIN ;
 int ESP_ERR_HTTP_CONNECTING ;
 int ESP_ERR_HTTP_EAGAIN ;
 int ESP_ERR_HTTP_FETCH_HEADER ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int HTTP_EVENT_ON_FINISH ;





 int TAG ;
 int errno ;
 int esp_http_check_response (TYPE_2__*) ;
 int esp_http_client_close (TYPE_2__*) ;
 int esp_http_client_connect (TYPE_2__*) ;
 int esp_http_client_fetch_headers (TYPE_2__*) ;
 int esp_http_client_get_data (TYPE_2__*) ;
 int esp_http_client_prepare (TYPE_2__*) ;
 int esp_http_client_request_send (TYPE_2__*,int ) ;
 int esp_http_client_send_post_data (TYPE_2__*) ;
 int http_dispatch_event (TYPE_2__*,int ,int *,int ) ;
 int http_should_keep_alive (int ) ;

esp_err_t esp_http_client_perform(esp_http_client_handle_t client)
{
    esp_err_t err;
    do {
        if (client->process_again) {
            esp_http_client_prepare(client);
        }
        switch (client->state) {




            case 131:
                if ((err = esp_http_client_connect(client)) != ESP_OK) {
                    if (client->is_async && err == ESP_ERR_HTTP_CONNECTING) {
                        return ESP_ERR_HTTP_EAGAIN;
                    }
                    return err;
                }

            case 132:
                if ((err = esp_http_client_request_send(client, client->post_len)) != ESP_OK) {
                    if (client->is_async && errno == EAGAIN) {
                        return ESP_ERR_HTTP_EAGAIN;
                    }
                    return err;
                }

            case 129:
                if ((err = esp_http_client_send_post_data(client)) != ESP_OK) {
                    if (client->is_async && errno == EAGAIN) {
                        return ESP_ERR_HTTP_EAGAIN;
                    }
                    return err;
                }

            case 130:
                if (esp_http_client_fetch_headers(client) < 0) {
                    if (client->is_async && errno == EAGAIN) {
                        return ESP_ERR_HTTP_EAGAIN;
                    }
                    return ESP_ERR_HTTP_FETCH_HEADER;
                }

            case 128:
                if ((err = esp_http_check_response(client)) != ESP_OK) {
                    ESP_LOGE(TAG, "Error response");
                    return err;
                }
                while (client->response->is_chunked && !client->is_chunk_complete) {
                    if (esp_http_client_get_data(client) <= 0) {
                        if (client->is_async && errno == EAGAIN) {
                            return ESP_ERR_HTTP_EAGAIN;
                        }
                        ESP_LOGD(TAG, "Read finish or server requests close");
                        break;
                    }
                }
                while (client->response->data_process < client->response->content_length) {
                    if (esp_http_client_get_data(client) <= 0) {
                        if (client->is_async && errno == EAGAIN) {
                            return ESP_ERR_HTTP_EAGAIN;
                        }
                        ESP_LOGD(TAG, "Read finish or server requests close");
                        break;
                    }
                }
                http_dispatch_event(client, HTTP_EVENT_ON_FINISH, ((void*)0), 0);

                if (!http_should_keep_alive(client->parser)) {
                    ESP_LOGD(TAG, "Close connection");
                    esp_http_client_close(client);
                } else {
                    if (client->state > 132) {
                        client->state = 132;
                        client->first_line_prepared = 0;
                    }
                }
                break;
                default:
                break;
        }
    } while (client->process_again);
    return ESP_OK;
}
