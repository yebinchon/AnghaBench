
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* url; char* cert_pem; int skip_cert_common_name_check; int event_handler; } ;
typedef TYPE_1__ esp_http_client_config_t ;
typedef scalar_t__ esp_err_t ;


 char* CONFIG_EXAMPLE_FIRMWARE_UPGRADE_URL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 scalar_t__ ESP_OK ;
 int OTA_URL_SIZE ;
 int TAG ;
 int _http_event_handler ;
 int abort () ;
 scalar_t__ esp_https_ota (TYPE_1__*) ;
 int esp_restart () ;
 int example_configure_stdin_stdout () ;
 int fgets (char*,int,int ) ;
 int portTICK_PERIOD_MS ;
 scalar_t__ server_cert_pem_start ;
 int stdin ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int vTaskDelay (int) ;

void simple_ota_example_task(void *pvParameter)
{
    ESP_LOGI(TAG, "Starting OTA example");

    esp_http_client_config_t config = {
        .url = CONFIG_EXAMPLE_FIRMWARE_UPGRADE_URL,
        .cert_pem = (char *)server_cert_pem_start,
        .event_handler = _http_event_handler,
    };
    esp_err_t ret = esp_https_ota(&config);
    if (ret == ESP_OK) {
        esp_restart();
    } else {
        ESP_LOGE(TAG, "Firmware upgrade failed");
    }
    while (1) {
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}
