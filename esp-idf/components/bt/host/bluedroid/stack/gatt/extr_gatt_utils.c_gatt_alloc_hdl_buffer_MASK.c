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
struct TYPE_7__ {int /*<<< orphan*/  svc_buffer; } ;
struct TYPE_8__ {TYPE_1__ svc_db; int /*<<< orphan*/  in_use; } ;
typedef  TYPE_2__ tGATT_HDL_LIST_ELEM ;
struct TYPE_9__ {TYPE_2__* hdl_list; } ;
typedef  TYPE_3__ tGATT_CB ;
typedef  size_t UINT8 ;

/* Variables and functions */
 size_t GATT_MAX_SR_PROFILES ; 
 int /*<<< orphan*/  QUEUE_SIZE_MAX ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__ gatt_cb ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

tGATT_HDL_LIST_ELEM *FUNC2(void)
{
    UINT8 i;
    tGATT_CB    *p_cb = &gatt_cb;
    tGATT_HDL_LIST_ELEM *p_elem = &p_cb->hdl_list[0];

    for (i = 0; i < GATT_MAX_SR_PROFILES; i++, p_elem ++) {
        if (!p_cb->hdl_list[i].in_use) {
            FUNC1(p_elem, 0, sizeof(tGATT_HDL_LIST_ELEM));
            p_elem->in_use = TRUE;
            p_elem->svc_db.svc_buffer = FUNC0(QUEUE_SIZE_MAX);
            return p_elem;
        }
    }

    return NULL;
}