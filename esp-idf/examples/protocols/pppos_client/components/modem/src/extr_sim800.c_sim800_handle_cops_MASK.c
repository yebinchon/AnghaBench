#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  oper; } ;
typedef  TYPE_1__ modem_dce_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  MODEM_MAX_OPERATOR_LENGTH ; 
 int /*<<< orphan*/  MODEM_RESULT_CODE_ERROR ; 
 int /*<<< orphan*/  MODEM_RESULT_CODE_SUCCESS ; 
 int /*<<< orphan*/  MODEM_STATE_FAIL ; 
 int /*<<< orphan*/  MODEM_STATE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,size_t) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,char*,char**) ; 

__attribute__((used)) static esp_err_t FUNC10(modem_dce_t *dce, const char *line)
{
    esp_err_t err = ESP_FAIL;
    if (FUNC8(line, MODEM_RESULT_CODE_SUCCESS)) {
        err = FUNC0(dce, MODEM_STATE_SUCCESS);
    } else if (FUNC8(line, MODEM_RESULT_CODE_ERROR)) {
        err = FUNC0(dce, MODEM_STATE_FAIL);
    } else if (!FUNC7(line, "+COPS", FUNC6("+COPS"))) {
        /* there might be some random spaces in operator's name, we can not use sscanf to parse the result */
        /* strtok will break the string, we need to create a copy */
        size_t len = FUNC6(line);
        char *line_copy = FUNC2(len + 1);
        FUNC4(line_copy, line);
        /* +COPS: <mode>[, <format>[, <oper>]] */
        char *str_ptr = NULL;
        char *p[3];
        uint8_t i = 0;
        /* strtok will broke string by replacing delimiter with '\0' */
        p[i] = FUNC9(line_copy, ",", &str_ptr);
        while (p[i]) {
            p[++i] = FUNC9(NULL, ",", &str_ptr);
        }
        if (i >= 3) {
            int len = FUNC3(dce->oper, MODEM_MAX_OPERATOR_LENGTH, "%s", p[2]);
            if (len > 2) {
                /* Strip "\r\n" */
                FUNC5(dce->oper, len);
                err = ESP_OK;
            }
        }
        FUNC1(line_copy);
    }
    return err;
}