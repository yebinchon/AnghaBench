
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int flags; scalar_t__ arg; int response; int opcode; } ;
typedef TYPE_1__ sdmmc_command_t ;
typedef int sdmmc_card_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_TIMEOUT ;
 scalar_t__ ESP_OK ;
 scalar_t__ MMC_R4 (int ) ;
 int SCF_CMD_BCR ;
 int SCF_RSP_R4 ;
 int SDMMC_IO_SEND_OP_COND_DELAY_MS ;
 scalar_t__ SD_IO_OCR_MEM_READY ;
 int SD_IO_SEND_OP_COND ;
 int portTICK_PERIOD_MS ;
 scalar_t__ sdmmc_send_cmd (int *,TYPE_1__*) ;
 int vTaskDelay (int) ;

esp_err_t sdmmc_io_send_op_cond(sdmmc_card_t* card, uint32_t ocr, uint32_t *ocrp)
{
    esp_err_t err = ESP_OK;
    sdmmc_command_t cmd = {
        .flags = SCF_CMD_BCR | SCF_RSP_R4,
        .arg = ocr,
        .opcode = SD_IO_SEND_OP_COND
    };
    for (size_t i = 0; i < 100; i++) {
        err = sdmmc_send_cmd(card, &cmd);
        if (err != ESP_OK) {
            break;
        }
        if ((MMC_R4(cmd.response) & SD_IO_OCR_MEM_READY) ||
            ocr == 0) {
            break;
        }
        err = ESP_ERR_TIMEOUT;
        vTaskDelay(SDMMC_IO_SEND_OP_COND_DELAY_MS / portTICK_PERIOD_MS);
    }
    if (err == ESP_OK && ocrp != ((void*)0))
        *ocrp = MMC_R4(cmd.response);

    return err;
}
