#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  modem_dce_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  MODEM_RESULT_CODE_ERROR ; 
 int /*<<< orphan*/  MODEM_RESULT_CODE_NO_CARRIER ; 
 int /*<<< orphan*/  MODEM_RESULT_CODE_SUCCESS ; 
 int /*<<< orphan*/  MODEM_STATE_FAIL ; 
 int /*<<< orphan*/  MODEM_STATE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC2(modem_dce_t *dce, const char *line)
{
    esp_err_t err = ESP_FAIL;
    if (FUNC1(line, MODEM_RESULT_CODE_SUCCESS)) {
        err = FUNC0(dce, MODEM_STATE_SUCCESS);
    } else if (FUNC1(line, MODEM_RESULT_CODE_NO_CARRIER)) {
        err = FUNC0(dce, MODEM_STATE_SUCCESS);
    } else if (FUNC1(line, MODEM_RESULT_CODE_ERROR)) {
        err = FUNC0(dce, MODEM_STATE_FAIL);
    }
    return err;
}