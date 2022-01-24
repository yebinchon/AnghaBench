#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ (* send_cmd ) (TYPE_1__*,char*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ modem_dte_t ;
struct TYPE_6__ {scalar_t__ state; int /*<<< orphan*/  handle_line; TYPE_1__* dte; } ;
typedef  TYPE_2__ modem_dce_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCE_TAG ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  MODEM_COMMAND_TIMEOUT_POWEROFF ; 
 scalar_t__ MODEM_STATE_SUCCESS ; 
 int /*<<< orphan*/  bg96_handle_power_down ; 
 int /*<<< orphan*/  err ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC3(modem_dce_t *dce)
{
    modem_dte_t *dte = dce->dte;
    dce->handle_line = bg96_handle_power_down;
    FUNC0(dte->send_cmd(dte, "AT+QPOWD=1\r", MODEM_COMMAND_TIMEOUT_POWEROFF) == ESP_OK, "send command failed", err);
    FUNC0(dce->state == MODEM_STATE_SUCCESS, "power down failed", err);
    FUNC1(DCE_TAG, "power down ok");
    return ESP_OK;
err:
    return ESP_FAIL;
}