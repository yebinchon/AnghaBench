
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; size_t datalen; size_t blklen; int flags; int arg; int opcode; } ;
typedef TYPE_1__ sdmmc_command_t ;
typedef int sdmmc_card_t ;
typedef int esp_err_t ;


 int MMC_SEND_EXT_CSD ;
 int SCF_CMD_ADTC ;
 int SCF_CMD_READ ;
 int SCF_RSP_R1 ;
 int assert (int ) ;
 int esp_ptr_dma_capable (void*) ;
 int sdmmc_send_cmd (int *,TYPE_1__*) ;

esp_err_t sdmmc_mmc_send_ext_csd_data(sdmmc_card_t* card, void *out_data, size_t datalen)
{
    assert(esp_ptr_dma_capable(out_data));
    sdmmc_command_t cmd = {
        .data = out_data,
        .datalen = datalen,
        .blklen = datalen,
        .opcode = MMC_SEND_EXT_CSD,
        .arg = 0,
        .flags = SCF_CMD_ADTC | SCF_RSP_R1 | SCF_CMD_READ
    };
    return sdmmc_send_cmd(card, &cmd);
}
