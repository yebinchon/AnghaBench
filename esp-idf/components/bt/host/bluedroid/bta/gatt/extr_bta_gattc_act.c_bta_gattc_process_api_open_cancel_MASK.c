#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,TYPE_3__*) ;} ;
typedef  TYPE_1__ tBTA_GATTC_RCB ;
struct TYPE_14__ {int /*<<< orphan*/  client_if; int /*<<< orphan*/  remote_bda; scalar_t__ is_direct; } ;
struct TYPE_11__ {TYPE_9__ api_cancel_conn; } ;
typedef  TYPE_2__ tBTA_GATTC_DATA ;
typedef  int /*<<< orphan*/  tBTA_GATTC_CLCB ;
typedef  int /*<<< orphan*/  tBTA_GATTC_CB ;
struct TYPE_12__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_3__ tBTA_GATTC ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_13__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_4__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTA_GATTC_CANCEL_OPEN_EVT ; 
 int /*<<< orphan*/  BTA_GATT_ERROR ; 
 int /*<<< orphan*/  BTA_GATT_TRANSPORT_LE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 

void FUNC7 (tBTA_GATTC_CB *p_cb, tBTA_GATTC_DATA *p_msg)
{
    UINT16 event = ((BT_HDR *)p_msg)->event;
    tBTA_GATTC_CLCB *p_clcb = NULL;
    tBTA_GATTC_RCB *p_clreg;
    tBTA_GATTC cb_data;
    FUNC1(p_cb);

    if (p_msg->api_cancel_conn.is_direct) {
        if ((p_clcb = FUNC4(p_msg->api_cancel_conn.client_if,
                      p_msg->api_cancel_conn.remote_bda,
                      BTA_GATT_TRANSPORT_LE)) != NULL) {
            FUNC5(p_clcb, event, p_msg);
        } else {
            FUNC0("No such connection need to be cancelled");

            p_clreg = FUNC3(p_msg->api_cancel_conn.client_if);

            if (p_clreg && p_clreg->p_cback) {
                cb_data.status = BTA_GATT_ERROR;
                (*p_clreg->p_cback)(BTA_GATTC_CANCEL_OPEN_EVT, &cb_data);
            }
        }
    } else {
        FUNC2(&p_msg->api_cancel_conn);

    }
}