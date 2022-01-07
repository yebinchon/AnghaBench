
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int arg; int flags; int response; int opcode; } ;
typedef TYPE_1__ sdmmc_command_t ;
typedef int sdmmc_card_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_RESPONSE ;
 scalar_t__ ESP_OK ;
 int MMC_R1 (int ) ;
 int MMC_R1_SWITCH_ERROR ;
 int MMC_SWITCH ;
 int MMC_SWITCH_MODE_WRITE_BYTE ;
 int SCF_CMD_AC ;
 int SCF_RSP_R1B ;
 int SCF_WAIT_BUSY ;
 scalar_t__ sdmmc_send_cmd (int *,TYPE_1__*) ;

esp_err_t sdmmc_mmc_switch(sdmmc_card_t* card, uint8_t set, uint8_t index, uint8_t value)
{
    sdmmc_command_t cmd = {
            .opcode = MMC_SWITCH,
            .arg = (MMC_SWITCH_MODE_WRITE_BYTE << 24) | (index << 16) | (value << 8) | set,
            .flags = SCF_RSP_R1B | SCF_CMD_AC | SCF_WAIT_BUSY,
    };
    esp_err_t err = sdmmc_send_cmd(card, &cmd);
    if (err == ESP_OK) {

        if (MMC_R1(cmd.response) & MMC_R1_SWITCH_ERROR)
            err = ESP_ERR_INVALID_RESPONSE;
    }

    return err;
}
