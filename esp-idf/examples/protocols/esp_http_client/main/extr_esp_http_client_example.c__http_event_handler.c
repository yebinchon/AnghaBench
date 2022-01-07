
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event_id; int data; int client; int data_len; int header_value; int header_key; } ;
typedef TYPE_1__ esp_http_client_event_t ;
typedef int esp_err_t ;


 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_OK ;







 int TAG ;
 int esp_http_client_is_chunked_response (int ) ;
 int esp_tls_get_and_clear_last_error (int ,int*,int *) ;

esp_err_t _http_event_handler(esp_http_client_event_t *evt)
{
    switch(evt->event_id) {
        case 133:
            ESP_LOGD(TAG, "HTTP_EVENT_ERROR");
            break;
        case 131:
            ESP_LOGD(TAG, "HTTP_EVENT_ON_CONNECTED");
            break;
        case 132:
            ESP_LOGD(TAG, "HTTP_EVENT_HEADER_SENT");
            break;
        case 128:
            ESP_LOGD(TAG, "HTTP_EVENT_ON_HEADER, key=%s, value=%s", evt->header_key, evt->header_value);
            break;
        case 130:
            ESP_LOGD(TAG, "HTTP_EVENT_ON_DATA, len=%d", evt->data_len);
            if (!esp_http_client_is_chunked_response(evt->client)) {


            }

            break;
        case 129:
            ESP_LOGD(TAG, "HTTP_EVENT_ON_FINISH");
            break;
        case 134:
            ESP_LOGI(TAG, "HTTP_EVENT_DISCONNECTED");
            int mbedtls_err = 0;
            esp_err_t err = esp_tls_get_and_clear_last_error(evt->data, &mbedtls_err, ((void*)0));
            if (err != 0) {
                ESP_LOGI(TAG, "Last esp error code: 0x%x", err);
                ESP_LOGI(TAG, "Last mbedtls failure: 0x%x", mbedtls_err);
            }
            break;
    }
    return ESP_OK;
}
