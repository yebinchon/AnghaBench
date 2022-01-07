
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_http_client_handle_t ;
typedef scalar_t__ esp_err_t ;


 int DEFAULT_OTA_BUF_SIZE ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int HttpStatus_Found ;
 int HttpStatus_MovedPermanently ;
 int HttpStatus_Unauthorized ;
 int TAG ;
 int esp_http_client_add_auth (int ) ;
 int esp_http_client_read (int ,char*,int) ;
 scalar_t__ esp_http_client_set_redirection (int ) ;
 scalar_t__ process_again (int) ;

__attribute__((used)) static esp_err_t _http_handle_response_code(esp_http_client_handle_t http_client, int status_code)
{
    esp_err_t err;
    if (status_code == HttpStatus_MovedPermanently || status_code == HttpStatus_Found) {
        err = esp_http_client_set_redirection(http_client);
        if (err != ESP_OK) {
            ESP_LOGE(TAG, "URL redirection Failed");
            return err;
        }
    } else if (status_code == HttpStatus_Unauthorized) {
        esp_http_client_add_auth(http_client);
    }

    char upgrade_data_buf[DEFAULT_OTA_BUF_SIZE];
    if (process_again(status_code)) {
        while (1) {
            int data_read = esp_http_client_read(http_client, upgrade_data_buf, DEFAULT_OTA_BUF_SIZE);
            if (data_read < 0) {
                ESP_LOGE(TAG, "Error: SSL data read error");
                return ESP_FAIL;
            } else if (data_read == 0) {
                return ESP_OK;
            }
        }
    }
    return ESP_OK;
}
