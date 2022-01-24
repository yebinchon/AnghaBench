#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,TYPE_5__*) ;} ;
typedef  TYPE_3__ tBTA_GATTC_RCB ;
struct TYPE_11__ {int /*<<< orphan*/  client_if; int /*<<< orphan*/ * remote_bda; scalar_t__ start; } ;
struct TYPE_13__ {TYPE_2__ api_listen; } ;
typedef  TYPE_4__ tBTA_GATTC_DATA ;
typedef  int /*<<< orphan*/  tBTA_GATTC_CB ;
struct TYPE_10__ {int /*<<< orphan*/  client_if; int /*<<< orphan*/  status; } ;
struct TYPE_14__ {int /*<<< orphan*/  status; TYPE_1__ reg_oper; } ;
typedef  TYPE_5__ tBTA_GATTC ;
typedef  int /*<<< orphan*/  BD_ADDR_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  BTA_GATTC_LISTEN_EVT ; 
 int /*<<< orphan*/  BTA_GATT_ERROR ; 
 int /*<<< orphan*/  BTA_GATT_OK ; 
 int /*<<< orphan*/  BTA_GATT_TRANSPORT_LE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ HCI_ROLE_SLAVE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_5__*) ; 

void FUNC12(tBTA_GATTC_CB *p_cb, tBTA_GATTC_DATA *p_msg)
{
    tBTA_GATTC_RCB      *p_clreg = FUNC5(p_msg->api_listen.client_if);
    tBTA_GATTC          cb_data;
    FUNC4(p_cb);

    cb_data.reg_oper.status = BTA_GATT_ERROR;
    cb_data.reg_oper.client_if = p_msg->api_listen.client_if;

    if (p_clreg == NULL) {
        FUNC1("bta_gattc_listen failed, unknown client_if: %d",
                         p_msg->api_listen.client_if);
        return;
    }
    /* mark bg conn record */
    if (FUNC8(p_msg->api_listen.client_if,
                               (BD_ADDR_PTR) p_msg->api_listen.remote_bda,
                               p_msg->api_listen.start,
                               TRUE)) {
        if (!FUNC2(p_msg->api_listen.client_if,
                         p_msg->api_listen.start,
                         p_msg->api_listen.remote_bda)) {
            FUNC1("Listen failure");
            (*p_clreg->p_cback)(BTA_GATTC_LISTEN_EVT, &cb_data);
        } else {
            cb_data.status = BTA_GATT_OK;

            (*p_clreg->p_cback)(BTA_GATTC_LISTEN_EVT, &cb_data);

            if (p_msg->api_listen.start) {
                /* if listen to a specific target */
                if (p_msg->api_listen.remote_bda != NULL) {

                    /* if is a connected remote device */
                    if (FUNC3(p_msg->api_listen.remote_bda) == HCI_ROLE_SLAVE &&
                            FUNC6(p_msg->api_listen.client_if,
                                                       p_msg->api_listen.remote_bda,
                                                       BTA_GATT_TRANSPORT_LE) == NULL) {

                        FUNC7(p_msg->api_listen.client_if,
                                                 p_msg->api_listen.remote_bda);
                    }
                }
                /* if listen to all */
                else {
                    FUNC0("Listen For All now");
                    /* go through all connected device and send
                    callback for all connected slave connection */
                    FUNC9(p_msg->api_listen.client_if);
                }
            }
        }
    }
}