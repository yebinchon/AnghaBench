#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,TYPE_5__*) ;} ;
typedef  TYPE_3__ tBTA_GATTC_RCB ;
struct TYPE_9__ {int /*<<< orphan*/  client_if; } ;
struct TYPE_12__ {TYPE_1__ api_get_addr; } ;
typedef  TYPE_4__ tBTA_GATTC_DATA ;
typedef  int /*<<< orphan*/  tBTA_GATTC_CB ;
struct TYPE_10__ {int num_addr; int /*<<< orphan*/ * bda_list; int /*<<< orphan*/  status; int /*<<< orphan*/  client_if; } ;
struct TYPE_13__ {TYPE_2__ get_addr_list; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ tBTA_GATTC ;
typedef  int UINT8 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_GATTC_GET_ADDR_LIST_EVT ; 
 int /*<<< orphan*/  BTA_GATT_ERROR ; 
 int /*<<< orphan*/  BTA_GATT_NOT_FOUND ; 
 int /*<<< orphan*/  BTA_GATT_OK ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_5__*) ; 

void FUNC6(tBTA_GATTC_CB *p_cb, tBTA_GATTC_DATA *p_msg)
{
    tBTA_GATTC gattc_cb = {0};
    tBTA_GATTC_RCB *p_clrcb = FUNC0(p_msg->api_get_addr.client_if);
    UINT8 num_addr = FUNC2();
    gattc_cb.get_addr_list.client_if = p_msg->api_get_addr.client_if;

    if (num_addr != 0) {
        gattc_cb.get_addr_list.num_addr = num_addr;
        gattc_cb.get_addr_list.bda_list = (BD_ADDR *)FUNC4(sizeof(BD_ADDR)*num_addr);
        if (gattc_cb.get_addr_list.bda_list != NULL) {
            FUNC1(gattc_cb.get_addr_list.bda_list);
            gattc_cb.get_addr_list.status = BTA_GATT_OK;
        } else {
            gattc_cb.get_addr_list.status = BTA_GATT_ERROR;
        }
    } else {
        gattc_cb.get_addr_list.status = BTA_GATT_NOT_FOUND;
    }

    if (p_clrcb != NULL) {
        (* p_clrcb->p_cback)(BTA_GATTC_GET_ADDR_LIST_EVT, &gattc_cb);
    }

    //release the address list buffer after used.
    if (gattc_cb.get_addr_list.bda_list != NULL) {
        FUNC3((void *)gattc_cb.get_addr_list.bda_list);
    }

}