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
typedef  int /*<<< orphan*/  tBTA_GATTC_DATA ;
struct TYPE_7__ {TYPE_1__* p_rcb; } ;
typedef  TYPE_2__ tBTA_GATTC_CLCB ;
struct TYPE_8__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_3__ tBTA_GATTC ;
struct TYPE_6__ {int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_GATTC_CANCEL_OPEN_EVT ; 
 int /*<<< orphan*/  BTA_GATT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 

void FUNC2(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATTC cb_data;
    FUNC0(p_data);

    cb_data.status = BTA_GATT_ERROR;

    if ( p_clcb && p_clcb->p_rcb && p_clcb->p_rcb->p_cback ) {
        (*p_clcb->p_rcb->p_cback)(BTA_GATTC_CANCEL_OPEN_EVT, &cb_data);
    }
}