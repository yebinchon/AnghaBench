
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int arg; int opcode; } ;
typedef TYPE_1__ sdmmc_command_t ;
typedef int sdmmc_card_t ;
typedef int esp_err_t ;


 int SCF_CMD_AC ;
 int SCF_RSP_R1 ;
 int SD_APP_SET_BUS_WIDTH ;
 int SD_ARG_BUS_WIDTH_1 ;
 int SD_ARG_BUS_WIDTH_4 ;
 int sdmmc_send_app_cmd (int *,TYPE_1__*) ;

esp_err_t sdmmc_send_cmd_set_bus_width(sdmmc_card_t* card, int width)
{
    sdmmc_command_t cmd = {
            .opcode = SD_APP_SET_BUS_WIDTH,
            .flags = SCF_RSP_R1 | SCF_CMD_AC,
            .arg = (width == 4) ? SD_ARG_BUS_WIDTH_4 : SD_ARG_BUS_WIDTH_1,
    };

    return sdmmc_send_app_cmd(card, &cmd);
}
