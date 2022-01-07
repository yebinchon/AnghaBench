
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_http_client_handle_t ;
struct TYPE_3__ {char* url; int is_async; int timeout_ms; int event_handler; } ;
typedef TYPE_1__ esp_http_client_config_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_HTTP_EAGAIN ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGI (int ,char*,int ,int ) ;
 scalar_t__ ESP_OK ;
 int HTTP_METHOD_POST ;
 int TAG ;
 int _http_event_handler ;
 int esp_err_to_name (scalar_t__) ;
 int esp_http_client_cleanup (int ) ;
 int esp_http_client_get_content_length (int ) ;
 int esp_http_client_get_status_code (int ) ;
 int esp_http_client_init (TYPE_1__*) ;
 scalar_t__ esp_http_client_perform (int ) ;
 int esp_http_client_set_method (int ,int ) ;
 int esp_http_client_set_post_field (int ,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void https_async(void)
{
    esp_http_client_config_t config = {
        .url = "https://postman-echo.com/post",
        .event_handler = _http_event_handler,
        .is_async = 1,
        .timeout_ms = 5000,
    };
    esp_http_client_handle_t client = esp_http_client_init(&config);
    esp_err_t err;
    const char *post_data = "Using a Palantír requires a person with great strength of will and wisdom. The Palantíri were meant to "
                            "be used by the Dúnedain to communicate throughout the Realms in Exile. During the War of the Ring, "
                            "the Palantíri were used by many individuals. Sauron used the Ithil-stone to take advantage of the users "
                            "of the other two stones, the Orthanc-stone and Anor-stone, but was also susceptible to deception himself.";
    esp_http_client_set_method(client, HTTP_METHOD_POST);
    esp_http_client_set_post_field(client, post_data, strlen(post_data));
    while (1) {
        err = esp_http_client_perform(client);
        if (err != ESP_ERR_HTTP_EAGAIN) {
            break;
        }
    }
    if (err == ESP_OK) {
        ESP_LOGI(TAG, "HTTPS Status = %d, content_length = %d",
                esp_http_client_get_status_code(client),
                esp_http_client_get_content_length(client));
    } else {
        ESP_LOGE(TAG, "Error perform http request %s", esp_err_to_name(err));
    }
    esp_http_client_cleanup(client);
}
