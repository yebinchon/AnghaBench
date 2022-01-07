
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sdmmc_scr_t ;
struct TYPE_3__ {size_t datalen; size_t blklen; int flags; int opcode; int * data; } ;
typedef TYPE_1__ sdmmc_command_t ;
typedef int sdmmc_card_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_OK ;
 int MALLOC_CAP_DMA ;
 int SCF_CMD_ADTC ;
 int SCF_CMD_READ ;
 int SCF_RSP_R1 ;
 int SD_APP_SEND_SCR ;
 int free (int *) ;
 scalar_t__ heap_caps_malloc (size_t,int ) ;
 scalar_t__ sdmmc_decode_scr (int *,int *) ;
 scalar_t__ sdmmc_send_app_cmd (int *,TYPE_1__*) ;

esp_err_t sdmmc_send_cmd_send_scr(sdmmc_card_t* card, sdmmc_scr_t *out_scr)
{
    size_t datalen = 8;
    uint32_t* buf = (uint32_t*) heap_caps_malloc(datalen, MALLOC_CAP_DMA);
    if (buf == ((void*)0)) {
        return ESP_ERR_NO_MEM;
    }
    sdmmc_command_t cmd = {
            .data = buf,
            .datalen = datalen,
            .blklen = datalen,
            .flags = SCF_CMD_ADTC | SCF_CMD_READ | SCF_RSP_R1,
            .opcode = SD_APP_SEND_SCR
    };
    esp_err_t err = sdmmc_send_app_cmd(card, &cmd);
    if (err == ESP_OK) {
        err = sdmmc_decode_scr(buf, out_scr);
    }
    free(buf);
    return err;
}
