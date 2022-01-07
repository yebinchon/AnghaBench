
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ modem_dce_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_OK ;
 int MODEM_MAX_NAME_LENGTH ;
 int MODEM_RESULT_CODE_ERROR ;
 int MODEM_RESULT_CODE_SUCCESS ;
 int MODEM_STATE_FAIL ;
 int MODEM_STATE_SUCCESS ;
 int esp_modem_process_command_done (TYPE_1__*,int ) ;
 int snprintf (int ,int ,char*,char const*) ;
 int strip_cr_lf_tail (int ,int) ;
 scalar_t__ strstr (char const*,int ) ;

__attribute__((used)) static esp_err_t sim800_handle_cgmm(modem_dce_t *dce, const char *line)
{
    esp_err_t err = ESP_FAIL;
    if (strstr(line, MODEM_RESULT_CODE_SUCCESS)) {
        err = esp_modem_process_command_done(dce, MODEM_STATE_SUCCESS);
    } else if (strstr(line, MODEM_RESULT_CODE_ERROR)) {
        err = esp_modem_process_command_done(dce, MODEM_STATE_FAIL);
    } else {
        int len = snprintf(dce->name, MODEM_MAX_NAME_LENGTH, "%s", line);
        if (len > 2) {

            strip_cr_lf_tail(dce->name, len);
            err = ESP_OK;
        }
    }
    return err;
}
