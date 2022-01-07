
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int imsi; } ;
typedef TYPE_1__ modem_dce_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ MODEM_IMSI_LENGTH ;
 int MODEM_RESULT_CODE_ERROR ;
 int MODEM_RESULT_CODE_SUCCESS ;
 int MODEM_STATE_FAIL ;
 int MODEM_STATE_SUCCESS ;
 int esp_modem_process_command_done (TYPE_1__*,int ) ;
 int snprintf (int ,scalar_t__,char*,char const*) ;
 int strip_cr_lf_tail (int ,int) ;
 scalar_t__ strstr (char const*,int ) ;

__attribute__((used)) static esp_err_t bg96_handle_cimi(modem_dce_t *dce, const char *line)
{
    esp_err_t err = ESP_FAIL;
    if (strstr(line, MODEM_RESULT_CODE_SUCCESS)) {
        err = esp_modem_process_command_done(dce, MODEM_STATE_SUCCESS);
    } else if (strstr(line, MODEM_RESULT_CODE_ERROR)) {
        err = esp_modem_process_command_done(dce, MODEM_STATE_FAIL);
    } else {
        int len = snprintf(dce->imsi, MODEM_IMSI_LENGTH + 1, "%s", line);
        if (len > 2) {

            strip_cr_lf_tail(dce->imsi, len);
            err = ESP_OK;
        }
    }
    return err;
}
