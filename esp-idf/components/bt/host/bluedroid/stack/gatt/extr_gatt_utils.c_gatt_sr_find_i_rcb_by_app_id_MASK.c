#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ service_instance; int /*<<< orphan*/  app_uuid; int /*<<< orphan*/  p_db; scalar_t__ in_use; } ;
typedef  TYPE_1__ tGATT_SR_REG ;
typedef  int /*<<< orphan*/  tBT_UUID ;
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ UINT16 ;
struct TYPE_4__ {TYPE_1__* sr_reg; } ;

/* Variables and functions */
 scalar_t__ GATT_MAX_SR_PROFILES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__ gatt_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

UINT8 FUNC4(tBT_UUID *p_app_uuid128, tBT_UUID *p_svc_uuid, UINT16 svc_inst)
{
    UINT8           i_rcb = 0;
    tGATT_SR_REG    *p_sreg;
    tBT_UUID        *p_this_uuid;

    for (i_rcb = 0, p_sreg = gatt_cb.sr_reg; i_rcb < GATT_MAX_SR_PROFILES; i_rcb++, p_sreg++) {
        if ( p_sreg->in_use ) {
            p_this_uuid = FUNC3 (p_sreg->p_db);

            if (p_this_uuid &&
                    FUNC2 (*p_app_uuid128, p_sreg->app_uuid ) &&
                    FUNC2 (*p_svc_uuid, *p_this_uuid) &&
                    (svc_inst == p_sreg->service_instance)) {
                FUNC0 ("Active Service Found ");
                FUNC1(*p_svc_uuid);

                break;
            }
        }
    }
    return i_rcb;
}