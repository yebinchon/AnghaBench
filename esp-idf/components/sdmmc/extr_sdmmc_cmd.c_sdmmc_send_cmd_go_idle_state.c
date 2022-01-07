
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int opcode; } ;
typedef TYPE_1__ sdmmc_command_t ;
typedef int sdmmc_card_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int MMC_GO_IDLE_STATE ;
 int SCF_CMD_BC ;
 int SCF_RSP_R0 ;
 int SCF_RSP_R1 ;
 int SDMMC_GO_IDLE_DELAY_MS ;
 scalar_t__ host_is_spi (int *) ;
 int portTICK_PERIOD_MS ;
 scalar_t__ sdmmc_send_cmd (int *,TYPE_1__*) ;
 int vTaskDelay (int) ;

esp_err_t sdmmc_send_cmd_go_idle_state(sdmmc_card_t* card)
{
    sdmmc_command_t cmd = {
        .opcode = MMC_GO_IDLE_STATE,
        .flags = SCF_CMD_BC | SCF_RSP_R0,
    };
    esp_err_t err = sdmmc_send_cmd(card, &cmd);
    if (host_is_spi(card)) {






        (void) err;
        vTaskDelay(SDMMC_GO_IDLE_DELAY_MS / portTICK_PERIOD_MS);

        cmd.flags |= SCF_RSP_R1;
        err = sdmmc_send_cmd(card, &cmd);
    }
    if (err == ESP_OK) {
        vTaskDelay(SDMMC_GO_IDLE_DELAY_MS / portTICK_PERIOD_MS);
    }
    return err;
}
