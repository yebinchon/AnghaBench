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
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ modem_dce_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  MODEM_MAX_NAME_LENGTH ; 
 int /*<<< orphan*/  MODEM_RESULT_CODE_ERROR ; 
 int /*<<< orphan*/  MODEM_RESULT_CODE_SUCCESS ; 
 int /*<<< orphan*/  MODEM_STATE_FAIL ; 
 int /*<<< orphan*/  MODEM_STATE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC4(modem_dce_t *dce, const char *line)
{
    esp_err_t err = ESP_FAIL;
    if (FUNC3(line, MODEM_RESULT_CODE_SUCCESS)) {
        err = FUNC0(dce, MODEM_STATE_SUCCESS);
    } else if (FUNC3(line, MODEM_RESULT_CODE_ERROR)) {
        err = FUNC0(dce, MODEM_STATE_FAIL);
    } else {
        int len = FUNC1(dce->name, MODEM_MAX_NAME_LENGTH, "%s", line);
        if (len > 2) {
            /* Strip "\r\n" */
            FUNC2(dce->name, len);
            err = ESP_OK;
        }
    }
    return err;
}