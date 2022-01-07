
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; int handle_line; TYPE_3__* dte; } ;
struct TYPE_7__ {TYPE_1__ parent; } ;
typedef TYPE_2__ sim800_modem_dce_t ;
struct TYPE_8__ {scalar_t__ (* send_cmd ) (TYPE_3__*,char*,int ) ;} ;
typedef TYPE_3__ modem_dte_t ;
typedef scalar_t__ esp_err_t ;


 int DCE_CHECK (int,char*,int ) ;
 int DCE_TAG ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,char*) ;
 scalar_t__ ESP_OK ;
 int MODEM_COMMAND_TIMEOUT_OPERATOR ;
 scalar_t__ MODEM_STATE_SUCCESS ;
 int err ;
 int sim800_handle_cops ;
 scalar_t__ stub1 (TYPE_3__*,char*,int ) ;

__attribute__((used)) static esp_err_t sim800_get_operator_name(sim800_modem_dce_t *sim800_dce)
{
    modem_dte_t *dte = sim800_dce->parent.dte;
    sim800_dce->parent.handle_line = sim800_handle_cops;
    DCE_CHECK(dte->send_cmd(dte, "AT+COPS?\r", MODEM_COMMAND_TIMEOUT_OPERATOR) == ESP_OK, "send command failed", err);
    DCE_CHECK(sim800_dce->parent.state == MODEM_STATE_SUCCESS, "get network operator failed", err);
    ESP_LOGD(DCE_TAG, "get network operator ok");
    return ESP_OK;
err:
    return ESP_FAIL;
}
