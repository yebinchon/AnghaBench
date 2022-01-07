
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ (* send_cmd ) (TYPE_1__*,char*,int ) ;} ;
typedef TYPE_1__ modem_dte_t ;
struct TYPE_7__ {scalar_t__ state; int handle_line; TYPE_1__* dte; } ;
typedef TYPE_2__ modem_dce_t ;
typedef scalar_t__ esp_err_t ;


 int DCE_CHECK (int,char*,int ) ;
 int DCE_TAG ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,char*) ;
 scalar_t__ ESP_OK ;
 int MODEM_COMMAND_TIMEOUT_DEFAULT ;
 scalar_t__ MODEM_STATE_SUCCESS ;
 int err ;
 int esp_modem_dce_handle_response_default ;
 scalar_t__ stub1 (TYPE_1__*,char*,int ) ;
 scalar_t__ stub2 (TYPE_1__*,char*,int ) ;

esp_err_t esp_modem_dce_echo(modem_dce_t *dce, bool on)
{
    modem_dte_t *dte = dce->dte;
    dce->handle_line = esp_modem_dce_handle_response_default;
    if (on) {
        DCE_CHECK(dte->send_cmd(dte, "ATE1\r", MODEM_COMMAND_TIMEOUT_DEFAULT) == ESP_OK, "send command failed", err);
        DCE_CHECK(dce->state == MODEM_STATE_SUCCESS, "enable echo failed", err);
        ESP_LOGD(DCE_TAG, "enable echo ok");
    } else {
        DCE_CHECK(dte->send_cmd(dte, "ATE0\r", MODEM_COMMAND_TIMEOUT_DEFAULT) == ESP_OK, "send command failed", err);
        DCE_CHECK(dce->state == MODEM_STATE_SUCCESS, "disable echo failed", err);
        ESP_LOGD(DCE_TAG, "disable echo ok");
    }
    return ESP_OK;
err:
    return ESP_FAIL;
}
