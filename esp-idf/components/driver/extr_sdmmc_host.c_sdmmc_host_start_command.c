
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int start_command; int card_num; scalar_t__ rw; scalar_t__ data_expected; } ;
typedef TYPE_3__ sdmmc_hw_cmd_t ;
typedef int esp_err_t ;
struct TYPE_6__ {int cards; } ;
struct TYPE_7__ {int cards; } ;
struct TYPE_9__ {TYPE_3__ cmd; int cmdarg; TYPE_1__ wrtprt; TYPE_2__ cdetect; } ;


 int BIT (int) ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 TYPE_5__ SDMMC ;

esp_err_t sdmmc_host_start_command(int slot, sdmmc_hw_cmd_t cmd, uint32_t arg) {
    if (!(slot == 0 || slot == 1)) {
        return ESP_ERR_INVALID_ARG;
    }
    if ((SDMMC.cdetect.cards & BIT(slot)) != 0) {
        return ESP_ERR_NOT_FOUND;
    }
    if (cmd.data_expected && cmd.rw && (SDMMC.wrtprt.cards & BIT(slot)) != 0) {
        return ESP_ERR_INVALID_STATE;
    }
    while (SDMMC.cmd.start_command == 1) {
        ;
    }
    SDMMC.cmdarg = arg;
    cmd.card_num = slot;
    cmd.start_command = 1;
    SDMMC.cmd = cmd;
    return ESP_OK;
}
