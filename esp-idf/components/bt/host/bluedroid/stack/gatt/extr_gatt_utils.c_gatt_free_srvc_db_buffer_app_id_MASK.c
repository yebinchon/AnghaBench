#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * p_free_mem; int /*<<< orphan*/  p_attr_list; scalar_t__ mem_free; int /*<<< orphan*/ * svc_buffer; } ;
struct TYPE_6__ {int /*<<< orphan*/  app_uuid128; } ;
struct TYPE_8__ {TYPE_2__ svc_db; TYPE_1__ asgn_range; } ;
typedef  TYPE_3__ tGATT_HDL_LIST_ELEM ;
typedef  int /*<<< orphan*/  tBT_UUID ;
typedef  scalar_t__ UINT8 ;
struct TYPE_9__ {TYPE_3__* hdl_list; } ;

/* Variables and functions */
 scalar_t__ GATT_MAX_SR_PROFILES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__ gatt_cb ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(tBT_UUID *p_app_id)
{
    tGATT_HDL_LIST_ELEM *p_elem =  &gatt_cb.hdl_list[0];
    UINT8   i;

    for (i = 0; i < GATT_MAX_SR_PROFILES; i ++, p_elem ++) {
        if (FUNC4(p_app_id, &p_elem->asgn_range.app_uuid128, sizeof(tBT_UUID)) == 0) {
            FUNC3(p_elem);
            while (!FUNC2(p_elem->svc_db.svc_buffer)) {
                FUNC5(FUNC0(p_elem->svc_db.svc_buffer, 0));
			}
            FUNC1(p_elem->svc_db.svc_buffer, NULL);
            p_elem->svc_db.svc_buffer = NULL;

            p_elem->svc_db.mem_free = 0;
            p_elem->svc_db.p_attr_list = *(p_elem->svc_db.p_free_mem = NULL);
        }
    }
}