
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int flags; int response; int arg; int opcode; } ;
typedef TYPE_1__ sdmmc_command_t ;
struct TYPE_7__ {int rca; } ;
typedef TYPE_2__ sdmmc_card_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int MMC_ARG_RCA (int ) ;
 int MMC_R1 (int ) ;
 int MMC_SEND_STATUS ;
 int SCF_CMD_AC ;
 int SCF_RSP_R1 ;
 scalar_t__ sdmmc_send_cmd (TYPE_2__*,TYPE_1__*) ;

esp_err_t sdmmc_send_cmd_send_status(sdmmc_card_t* card, uint32_t* out_status)
{
    sdmmc_command_t cmd = {
            .opcode = MMC_SEND_STATUS,
            .arg = MMC_ARG_RCA(card->rca),
            .flags = SCF_CMD_AC | SCF_RSP_R1
    };
    esp_err_t err = sdmmc_send_cmd(card, &cmd);
    if (err != ESP_OK) {
        return err;
    }
    if (out_status) {
        *out_status = MMC_R1(cmd.response);
    }
    return ESP_OK;
}
