
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ flags; int arg; int opcode; } ;
typedef TYPE_1__ sdmmc_command_t ;
typedef int sdmmc_card_t ;
typedef int esp_err_t ;


 int MMC_ARG_RCA (scalar_t__) ;
 int MMC_SELECT_CARD ;
 scalar_t__ SCF_CMD_AC ;
 scalar_t__ SCF_RSP_R1 ;
 int sdmmc_send_cmd (int *,TYPE_1__*) ;

esp_err_t sdmmc_send_cmd_select_card(sdmmc_card_t* card, uint32_t rca)
{

    uint32_t response = (rca == 0) ? 0 : SCF_RSP_R1;
    sdmmc_command_t cmd = {
            .opcode = MMC_SELECT_CARD,
            .arg = MMC_ARG_RCA(rca),
            .flags = SCF_CMD_AC | response
    };
    return sdmmc_send_cmd(card, &cmd);
}
