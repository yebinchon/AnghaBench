
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_http_client_handle_t ;
struct TYPE_3__ {char* host; char* path; int cert_pem; int event_handler; int transport_type; } ;
typedef TYPE_1__ esp_http_client_config_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*,int ,int ) ;
 scalar_t__ ESP_OK ;
 int HTTP_TRANSPORT_OVER_SSL ;
 int TAG ;
 int _http_event_handler ;
 int esp_err_to_name (scalar_t__) ;
 int esp_http_client_cleanup (int ) ;
 int esp_http_client_get_content_length (int ) ;
 int esp_http_client_get_status_code (int ) ;
 int esp_http_client_init (TYPE_1__*) ;
 scalar_t__ esp_http_client_perform (int ) ;
 int howsmyssl_com_root_cert_pem_start ;

__attribute__((used)) static void https_with_hostname_path(void)
{
    esp_http_client_config_t config = {
        .host = "www.howsmyssl.com",
        .path = "/",
        .transport_type = HTTP_TRANSPORT_OVER_SSL,
        .event_handler = _http_event_handler,
        .cert_pem = howsmyssl_com_root_cert_pem_start,
    };
    esp_http_client_handle_t client = esp_http_client_init(&config);
    esp_err_t err = esp_http_client_perform(client);

    if (err == ESP_OK) {
        ESP_LOGI(TAG, "HTTPS Status = %d, content_length = %d",
                esp_http_client_get_status_code(client),
                esp_http_client_get_content_length(client));
    } else {
        ESP_LOGE(TAG, "Error perform http request %s", esp_err_to_name(err));
    }
    esp_http_client_cleanup(client);
}
