
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ timeout_ms; scalar_t__ error; int * response; int opcode; int datalen; int blklen; int data; int flags; int arg; } ;
typedef TYPE_2__ sdmmc_command_t ;
struct TYPE_7__ {scalar_t__ command_timeout_ms; int slot; scalar_t__ (* do_transaction ) (int,TYPE_2__*) ;} ;
struct TYPE_9__ {TYPE_1__ host; } ;
typedef TYPE_3__ sdmmc_card_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGD (int ,char*,int ,scalar_t__) ;
 int ESP_LOGV (int ,char*,int,int ,int ,int ,scalar_t__,int,...) ;
 int MMC_R1_CURRENT_STATE (int *) ;
 scalar_t__ SDMMC_DEFAULT_CMD_TIMEOUT_MS ;
 int TAG ;
 scalar_t__ stub1 (int,TYPE_2__*) ;

esp_err_t sdmmc_send_cmd(sdmmc_card_t* card, sdmmc_command_t* cmd)
{
    if (card->host.command_timeout_ms != 0) {
        cmd->timeout_ms = card->host.command_timeout_ms;
    } else if (cmd->timeout_ms == 0) {
        cmd->timeout_ms = SDMMC_DEFAULT_CMD_TIMEOUT_MS;
    }

    int slot = card->host.slot;
    ESP_LOGV(TAG, "sending cmd slot=%d op=%d arg=%x flags=%x data=%p blklen=%d datalen=%d timeout=%d",
            slot, cmd->opcode, cmd->arg, cmd->flags, cmd->data, cmd->blklen, cmd->datalen, cmd->timeout_ms);
    esp_err_t err = (*card->host.do_transaction)(slot, cmd);
    if (err != 0) {
        ESP_LOGD(TAG, "cmd=%d, sdmmc_req_run returned 0x%x", cmd->opcode, err);
        return err;
    }
    int state = MMC_R1_CURRENT_STATE(cmd->response);
    ESP_LOGV(TAG, "cmd response %08x %08x %08x %08x err=0x%x state=%d",
               cmd->response[0],
               cmd->response[1],
               cmd->response[2],
               cmd->response[3],
               cmd->error,
               state);
    return cmd->error;
}
