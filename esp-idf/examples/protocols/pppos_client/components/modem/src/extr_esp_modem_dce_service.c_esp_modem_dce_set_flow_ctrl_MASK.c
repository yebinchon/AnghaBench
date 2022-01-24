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
typedef  int modem_flow_ctrl_t ;
struct TYPE_5__ {int flow_ctrl; scalar_t__ (* send_cmd ) (TYPE_1__*,char*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ modem_dte_t ;
struct TYPE_6__ {scalar_t__ state; int /*<<< orphan*/  handle_line; TYPE_1__* dte; } ;
typedef  TYPE_2__ modem_dce_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  command ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  DCE_TAG ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  MODEM_COMMAND_TIMEOUT_DEFAULT ; 
 scalar_t__ MODEM_STATE_SUCCESS ; 
 int /*<<< orphan*/  err ; 
 int /*<<< orphan*/  esp_modem_dce_handle_response_default ; 
 int FUNC2 (char*,int,char*,int,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

esp_err_t FUNC4(modem_dce_t *dce, modem_flow_ctrl_t flow_ctrl)
{
    modem_dte_t *dte = dce->dte;
    char command[16];
    int len = FUNC2(command, sizeof(command), "AT+IFC=%d,%d\r", dte->flow_ctrl, flow_ctrl);
    FUNC0(len < sizeof(command), "command too long: %s", err, command);
    dce->handle_line = esp_modem_dce_handle_response_default;
    FUNC0(dte->send_cmd(dte, command, MODEM_COMMAND_TIMEOUT_DEFAULT) == ESP_OK, "send command failed", err);
    FUNC0(dce->state == MODEM_STATE_SUCCESS, "set flow control failed", err);
    FUNC1(DCE_TAG, "set flow control ok");
    return ESP_OK;
err:
    return ESP_FAIL;
}