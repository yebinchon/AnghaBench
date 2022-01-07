
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int modem_dce_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int MODEM_RESULT_CODE_ERROR ;
 int MODEM_RESULT_CODE_SUCCESS ;
 int MODEM_STATE_FAIL ;
 int MODEM_STATE_SUCCESS ;
 int esp_modem_process_command_done (int *,int ) ;
 scalar_t__ strstr (char const*,int ) ;

esp_err_t esp_modem_dce_handle_response_default(modem_dce_t *dce, const char *line)
{
    esp_err_t err = ESP_FAIL;
    if (strstr(line, MODEM_RESULT_CODE_SUCCESS)) {
        err = esp_modem_process_command_done(dce, MODEM_STATE_SUCCESS);
    } else if (strstr(line, MODEM_RESULT_CODE_ERROR)) {
        err = esp_modem_process_command_done(dce, MODEM_STATE_FAIL);
    }
    return err;
}
