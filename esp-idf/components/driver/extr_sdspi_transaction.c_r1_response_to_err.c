
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_CRC ;
 int ESP_ERR_INVALID_RESPONSE ;
 int ESP_ERR_INVALID_SIZE ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_ERR_TIMEOUT ;
 int ESP_LOGD (int ,char*,int,...) ;
 int SD_SPI_R1_ADDR_ERR ;
 int SD_SPI_R1_CMD_CRC_ERR ;
 int SD_SPI_R1_ERASE_RST ;
 int SD_SPI_R1_ERASE_SEQ_ERR ;
 int SD_SPI_R1_IDLE_STATE ;
 int SD_SPI_R1_ILLEGAL_CMD ;
 int SD_SPI_R1_NO_RESPONSE ;
 int SD_SPI_R1_PARAM_ERR ;
 int TAG ;

__attribute__((used)) static void r1_response_to_err(uint8_t r1, int cmd, esp_err_t *out_err)
{
    if (r1 & SD_SPI_R1_NO_RESPONSE) {
        ESP_LOGD(TAG, "cmd=%d, R1 response not found", cmd);
        *out_err = ESP_ERR_TIMEOUT;
    } else if (r1 & SD_SPI_R1_CMD_CRC_ERR) {
        ESP_LOGD(TAG, "cmd=%d, R1 response: command CRC error", cmd);
        *out_err = ESP_ERR_INVALID_CRC;
    } else if (r1 & SD_SPI_R1_ILLEGAL_CMD) {
        ESP_LOGD(TAG, "cmd=%d, R1 response: command not supported", cmd);
        *out_err = ESP_ERR_NOT_SUPPORTED;
    } else if (r1 & SD_SPI_R1_ADDR_ERR) {
        ESP_LOGD(TAG, "cmd=%d, R1 response: alignment error", cmd);
        *out_err = ESP_ERR_INVALID_ARG;
    } else if (r1 & SD_SPI_R1_PARAM_ERR) {
        ESP_LOGD(TAG, "cmd=%d, R1 response: size error", cmd);
        *out_err = ESP_ERR_INVALID_SIZE;
    } else if ((r1 & SD_SPI_R1_ERASE_RST) ||
               (r1 & SD_SPI_R1_ERASE_SEQ_ERR)) {
        *out_err = ESP_ERR_INVALID_STATE;
    } else if (r1 & SD_SPI_R1_IDLE_STATE) {

    } else if (r1 != 0) {
        ESP_LOGD(TAG, "cmd=%d, R1 response: unexpected value 0x%02x", cmd, r1);
        *out_err = ESP_ERR_INVALID_RESPONSE;
    }
}
