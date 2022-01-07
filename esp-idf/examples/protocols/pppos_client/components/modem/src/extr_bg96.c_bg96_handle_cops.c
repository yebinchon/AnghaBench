
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_4__ {int oper; } ;
typedef TYPE_1__ modem_dce_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_OK ;
 int MODEM_MAX_OPERATOR_LENGTH ;
 int MODEM_RESULT_CODE_ERROR ;
 int MODEM_RESULT_CODE_SUCCESS ;
 int MODEM_STATE_FAIL ;
 int MODEM_STATE_SUCCESS ;
 int esp_modem_process_command_done (TYPE_1__*,int ) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int snprintf (int ,int ,char*,char*) ;
 int strcpy (char*,char const*) ;
 int strip_cr_lf_tail (int ,int) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char*,size_t) ;
 scalar_t__ strstr (char const*,int ) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static esp_err_t bg96_handle_cops(modem_dce_t *dce, const char *line)
{
    esp_err_t err = ESP_FAIL;
    if (strstr(line, MODEM_RESULT_CODE_SUCCESS)) {
        err = esp_modem_process_command_done(dce, MODEM_STATE_SUCCESS);
    } else if (strstr(line, MODEM_RESULT_CODE_ERROR)) {
        err = esp_modem_process_command_done(dce, MODEM_STATE_FAIL);
    } else if (!strncmp(line, "+COPS", strlen("+COPS"))) {


        size_t len = strlen(line);
        char *line_copy = malloc(len + 1);
        strcpy(line_copy, line);

        char *str_ptr = ((void*)0);
        char *p[3];
        uint8_t i = 0;

        p[i] = strtok_r(line_copy, ",", &str_ptr);
        while (p[i]) {
            p[++i] = strtok_r(((void*)0), ",", &str_ptr);
        }
        if (i >= 3) {
            int len = snprintf(dce->oper, MODEM_MAX_OPERATOR_LENGTH, "%s", p[2]);
            if (len > 2) {

                strip_cr_lf_tail(dce->oper, len);
                err = ESP_OK;
            }
        }
        free(line_copy);
    }
    return err;
}
