#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ (* send_cmd ) (TYPE_2__*,char*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ modem_dte_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_6__ {scalar_t__ state; int /*<<< orphan*/  handle_line; TYPE_2__* dte; } ;
struct TYPE_8__ {TYPE_1__ parent; } ;
typedef  TYPE_3__ bg96_modem_dce_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCE_TAG ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  MODEM_COMMAND_TIMEOUT_DEFAULT ; 
 scalar_t__ MODEM_STATE_SUCCESS ; 
 int /*<<< orphan*/  bg96_handle_cimi ; 
 int /*<<< orphan*/  err ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC3(bg96_modem_dce_t *bg96_dce)
{
    modem_dte_t *dte = bg96_dce->parent.dte;
    bg96_dce->parent.handle_line = bg96_handle_cimi;
    FUNC0(dte->send_cmd(dte, "AT+CIMI\r", MODEM_COMMAND_TIMEOUT_DEFAULT) == ESP_OK, "send command failed", err);
    FUNC0(bg96_dce->parent.state == MODEM_STATE_SUCCESS, "get imsi number failed", err);
    FUNC1(DCE_TAG, "get imsi number ok");
    return ESP_OK;
err:
    return ESP_FAIL;
}