
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; int response; int arg; int opcode; } ;
typedef TYPE_1__ sdmmc_command_t ;
struct TYPE_9__ {int rca; } ;
typedef TYPE_2__ sdmmc_card_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_NOT_SUPPORTED ;
 int ESP_LOGW (int ,char*) ;
 scalar_t__ ESP_OK ;
 int MMC_APP_CMD ;
 int MMC_ARG_RCA (int ) ;
 int MMC_R1 (int ) ;
 int MMC_R1_APP_CMD ;
 int SCF_CMD_AC ;
 int SCF_RSP_R1 ;
 int TAG ;
 int host_is_spi (TYPE_2__*) ;
 scalar_t__ sdmmc_send_cmd (TYPE_2__*,TYPE_1__*) ;

esp_err_t sdmmc_send_app_cmd(sdmmc_card_t* card, sdmmc_command_t* cmd)
{
    sdmmc_command_t app_cmd = {
        .opcode = MMC_APP_CMD,
        .flags = SCF_CMD_AC | SCF_RSP_R1,
        .arg = MMC_ARG_RCA(card->rca),
    };
    esp_err_t err = sdmmc_send_cmd(card, &app_cmd);
    if (err != ESP_OK) {
        return err;
    }

    if (!host_is_spi(card) && !(MMC_R1(app_cmd.response) & MMC_R1_APP_CMD)) {
        ESP_LOGW(TAG, "card doesn't support APP_CMD");
        return ESP_ERR_NOT_SUPPORTED;
    }
    return sdmmc_send_cmd(card, cmd);
}
