
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sector_size; } ;
typedef TYPE_1__ sdmmc_csd_t ;
struct TYPE_6__ {int flags; int arg; int opcode; } ;
typedef TYPE_2__ sdmmc_command_t ;
typedef int sdmmc_card_t ;
typedef int esp_err_t ;


 int MMC_SET_BLOCKLEN ;
 int SCF_CMD_AC ;
 int SCF_RSP_R1 ;
 int sdmmc_send_cmd (int *,TYPE_2__*) ;

esp_err_t sdmmc_send_cmd_set_blocklen(sdmmc_card_t* card, sdmmc_csd_t* csd)
{
    sdmmc_command_t cmd = {
            .opcode = MMC_SET_BLOCKLEN,
            .arg = csd->sector_size,
            .flags = SCF_CMD_AC | SCF_RSP_R1
    };
    return sdmmc_send_cmd(card, &cmd);
}
