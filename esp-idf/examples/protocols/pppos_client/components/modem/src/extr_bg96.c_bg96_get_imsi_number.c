
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ (* send_cmd ) (TYPE_2__*,char*,int ) ;} ;
typedef TYPE_2__ modem_dte_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_6__ {scalar_t__ state; int handle_line; TYPE_2__* dte; } ;
struct TYPE_8__ {TYPE_1__ parent; } ;
typedef TYPE_3__ bg96_modem_dce_t ;


 int DCE_CHECK (int,char*,int ) ;
 int DCE_TAG ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,char*) ;
 scalar_t__ ESP_OK ;
 int MODEM_COMMAND_TIMEOUT_DEFAULT ;
 scalar_t__ MODEM_STATE_SUCCESS ;
 int bg96_handle_cimi ;
 int err ;
 scalar_t__ stub1 (TYPE_2__*,char*,int ) ;

__attribute__((used)) static esp_err_t bg96_get_imsi_number(bg96_modem_dce_t *bg96_dce)
{
    modem_dte_t *dte = bg96_dce->parent.dte;
    bg96_dce->parent.handle_line = bg96_handle_cimi;
    DCE_CHECK(dte->send_cmd(dte, "AT+CIMI\r", MODEM_COMMAND_TIMEOUT_DEFAULT) == ESP_OK, "send command failed", err);
    DCE_CHECK(bg96_dce->parent.state == MODEM_STATE_SUCCESS, "get imsi number failed", err);
    ESP_LOGD(DCE_TAG, "get imsi number ok");
    return ESP_OK;
err:
    return ESP_FAIL;
}
