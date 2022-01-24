#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,TYPE_3__*) ;} ;
typedef  TYPE_1__ tBTA_GATTC_RCB ;
struct TYPE_8__ {int /*<<< orphan*/  client_if; int /*<<< orphan*/  remote_bda; } ;
typedef  TYPE_2__ tBTA_GATTC_API_CANCEL_OPEN ;
struct TYPE_9__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_3__ tBTA_GATTC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTA_GATTC_CANCEL_OPEN_EVT ; 
 int /*<<< orphan*/  BTA_GATT_ERROR ; 
 int /*<<< orphan*/  BTA_GATT_OK ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 

void FUNC5(tBTA_GATTC_API_CANCEL_OPEN *p_data)
{
    tBTA_GATTC_RCB      *p_clreg;
    tBTA_GATTC          cb_data;
    cb_data.status = BTA_GATT_ERROR;

    /* remove the device from the bg connection mask */
    if (FUNC3(p_data->client_if, p_data->remote_bda, FALSE, FALSE)) {
        if (FUNC1(p_data->client_if, p_data->remote_bda, FALSE)) {
            cb_data.status = BTA_GATT_OK;
        } else {
            FUNC0("bta_gattc_cancel_bk_conn failed");
        }
    }
    p_clreg = FUNC2(p_data->client_if);

    if (p_clreg && p_clreg->p_cback) {
        (*p_clreg->p_cback)(BTA_GATTC_CANCEL_OPEN_EVT, &cb_data);
    }

}