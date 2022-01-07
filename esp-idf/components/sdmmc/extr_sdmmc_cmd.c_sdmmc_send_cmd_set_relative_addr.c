
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int flags; int response; int arg; int opcode; } ;
typedef TYPE_1__ sdmmc_command_t ;
struct TYPE_7__ {scalar_t__ is_mmc; } ;
typedef TYPE_2__ sdmmc_card_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int MMC_ARG_RCA (int) ;
 int SCF_CMD_BCR ;
 int SCF_RSP_R6 ;
 int SD_R6_RCA (int ) ;
 int SD_SEND_RELATIVE_ADDR ;
 int assert (int*) ;
 scalar_t__ sdmmc_send_cmd (TYPE_2__*,TYPE_1__*) ;

esp_err_t sdmmc_send_cmd_set_relative_addr(sdmmc_card_t* card, uint16_t* out_rca)
{
    assert(out_rca);
    sdmmc_command_t cmd = {
            .opcode = SD_SEND_RELATIVE_ADDR,
            .flags = SCF_CMD_BCR | SCF_RSP_R6
    };




    uint16_t mmc_rca = 1;
    if (card->is_mmc) {
        cmd.arg = MMC_ARG_RCA(mmc_rca);
    }

    esp_err_t err = sdmmc_send_cmd(card, &cmd);
    if (err != ESP_OK) {
        return err;
    }
    *out_rca = (card->is_mmc) ? mmc_rca : SD_R6_RCA(cmd.response);
    return ESP_OK;
}
