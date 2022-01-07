
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sdmmc_response_t ;
struct TYPE_3__ {int flags; int response; int opcode; } ;
typedef TYPE_1__ sdmmc_command_t ;
typedef int sdmmc_card_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int MMC_ALL_SEND_CID ;
 int SCF_CMD_BCR ;
 int SCF_RSP_R2 ;
 int assert (int *) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ sdmmc_send_cmd (int *,TYPE_1__*) ;

esp_err_t sdmmc_send_cmd_all_send_cid(sdmmc_card_t* card, sdmmc_response_t* out_raw_cid)
{
    assert(out_raw_cid);
    sdmmc_command_t cmd = {
            .opcode = MMC_ALL_SEND_CID,
            .flags = SCF_CMD_BCR | SCF_RSP_R2
    };
    esp_err_t err = sdmmc_send_cmd(card, &cmd);
    if (err != ESP_OK) {
        return err;
    }
    memcpy(out_raw_cid, &cmd.response, sizeof(sdmmc_response_t));
    return ESP_OK;
}
