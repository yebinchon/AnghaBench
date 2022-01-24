#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTA_GATTC_RCB ;
struct TYPE_8__ {int /*<<< orphan*/  client_if; int /*<<< orphan*/  transport; int /*<<< orphan*/  remote_bda; scalar_t__ is_direct; } ;
struct TYPE_6__ {TYPE_5__ api_conn; } ;
typedef  TYPE_1__ tBTA_GATTC_DATA ;
typedef  int /*<<< orphan*/  tBTA_GATTC_CLCB ;
typedef  int /*<<< orphan*/  tBTA_GATTC_CB ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_7__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_2__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  BTA_GATT_INVALID_CONN_ID ; 
 int /*<<< orphan*/  BTA_GATT_NO_RESOURCES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC7 (tBTA_GATTC_CB *p_cb, tBTA_GATTC_DATA *p_msg)
{
    UINT16 event = ((BT_HDR *)p_msg)->event;
    tBTA_GATTC_CLCB *p_clcb = NULL;
    tBTA_GATTC_RCB *p_clreg = FUNC2(p_msg->api_conn.client_if);
    FUNC1(p_cb);

    if (p_clreg != NULL) {
        if (p_msg->api_conn.is_direct) {
            if ((p_clcb = FUNC3(p_msg->api_conn.client_if,
                                                    p_msg->api_conn.remote_bda,
                                                    p_msg->api_conn.transport)) != NULL) {
                FUNC6(p_clcb, event, p_msg);
            } else {
                FUNC0("No resources to open a new connection.");

                FUNC5(p_clreg,
                                          BTA_GATT_NO_RESOURCES,
                                          p_msg->api_conn.remote_bda,
                                          BTA_GATT_INVALID_CONN_ID,
                                          p_msg->api_conn.transport, 0);
            }
        } else {
            FUNC4(&p_msg->api_conn, p_clreg);
        }
    } else {
        FUNC0("bta_gattc_process_api_open Failed, unknown client_if: %d",
                         p_msg->api_conn.client_if);
    }
}