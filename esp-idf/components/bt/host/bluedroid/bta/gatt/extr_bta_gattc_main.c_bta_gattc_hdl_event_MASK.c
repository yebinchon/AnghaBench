#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTA_GATTC_RCB ;
struct TYPE_23__ {int /*<<< orphan*/  client_if; } ;
struct TYPE_22__ {int /*<<< orphan*/  client_if; } ;
struct TYPE_24__ {TYPE_2__ int_conn; TYPE_1__ api_dereg; } ;
typedef  TYPE_3__ tBTA_GATTC_DATA ;
typedef  int /*<<< orphan*/  tBTA_GATTC_CLCB ;
typedef  int /*<<< orphan*/  tBTA_GATTC_CB ;
struct TYPE_25__ {int event; int /*<<< orphan*/  layer_specific; } ;
typedef  TYPE_4__ BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
#define  BTA_GATTC_API_BROADCAST_EVT 140 
#define  BTA_GATTC_API_CACHE_ASSOC_EVT 139 
#define  BTA_GATTC_API_CACHE_CLEAN_EVT 138 
#define  BTA_GATTC_API_CACHE_GET_ADDR_LIST_EVT 137 
#define  BTA_GATTC_API_CANCEL_OPEN_EVT 136 
#define  BTA_GATTC_API_DEREG_EVT 135 
#define  BTA_GATTC_API_DISABLE_EVT 134 
#define  BTA_GATTC_API_LISTEN_EVT 133 
#define  BTA_GATTC_API_OPEN_EVT 132 
#define  BTA_GATTC_API_REFRESH_EVT 131 
#define  BTA_GATTC_API_REG_EVT 130 
#define  BTA_GATTC_ENC_CMPL_EVT 129 
 int BTA_GATTC_INT_CONN_EVT ; 
 int BTA_GATTC_INT_DISCONN_EVT ; 
#define  BTA_GATTC_INT_START_IF_EVT 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  bta_gattc_cb ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

BOOLEAN FUNC22(BT_HDR *p_msg)
{
    tBTA_GATTC_CB *p_cb = &bta_gattc_cb;
    tBTA_GATTC_CLCB *p_clcb = NULL;
    tBTA_GATTC_RCB      *p_clreg;
    BOOLEAN             rt = TRUE;
#if BTA_GATT_DEBUG == TRUE
    FUNC0("bta_gattc_hdl_event: Event [%s]\n", FUNC21(p_msg->event));
#endif
    switch (p_msg->event) {
    case BTA_GATTC_API_DISABLE_EVT:
        FUNC5(p_cb);
        break;

    case BTA_GATTC_API_REG_EVT:
        FUNC18(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;

    case BTA_GATTC_INT_START_IF_EVT:
        FUNC20(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;

    case BTA_GATTC_API_DEREG_EVT:
        p_clreg = FUNC2(((tBTA_GATTC_DATA *)p_msg)->api_dereg.client_if);
        FUNC4(p_cb, p_clreg);
        break;

    case BTA_GATTC_API_OPEN_EVT:
        FUNC14(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;

    case BTA_GATTC_API_CANCEL_OPEN_EVT:
        FUNC15(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;

    case BTA_GATTC_API_REFRESH_EVT:
        FUNC16(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;
    case BTA_GATTC_API_CACHE_ASSOC_EVT:
        FUNC11(p_cb, (tBTA_GATTC_DATA *)p_msg);
        break;
    case BTA_GATTC_API_CACHE_GET_ADDR_LIST_EVT:
        FUNC13(p_cb, (tBTA_GATTC_DATA *)p_msg);
        break;
    case BTA_GATTC_API_CACHE_CLEAN_EVT:
        FUNC12(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;
#if BLE_INCLUDED == TRUE
    case BTA_GATTC_API_LISTEN_EVT:
        FUNC10(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;
    case BTA_GATTC_API_BROADCAST_EVT:
        FUNC1(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;
#endif

    case BTA_GATTC_ENC_CMPL_EVT:
        FUNC17(p_cb, (tBTA_GATTC_DATA *) p_msg);
        break;

    default:
        if (p_msg->event == BTA_GATTC_INT_CONN_EVT) {
            p_clcb = FUNC8((tBTA_GATTC_DATA *) p_msg);
            p_clreg = FUNC2(((tBTA_GATTC_DATA *)p_msg)->int_conn.client_if);
            if (p_clreg != NULL){
                FUNC3(p_clreg, (tBTA_GATTC_DATA *) p_msg);
            }

        } else if (p_msg->event == BTA_GATTC_INT_DISCONN_EVT) {
            p_clreg = FUNC2(((tBTA_GATTC_DATA *)p_msg)->int_conn.client_if);
            if (p_clreg != NULL){
                FUNC6(p_clreg, (tBTA_GATTC_DATA *) p_msg);
            }
            p_clcb = FUNC9((tBTA_GATTC_DATA *) p_msg);
        } else {
            p_clcb = FUNC7(p_msg->layer_specific);
        }

        if (p_clcb != NULL) {
            rt = FUNC19(p_clcb, p_msg->event, (tBTA_GATTC_DATA *) p_msg);
        } else {
            FUNC0("Ignore unknown conn ID: %d\n", p_msg->layer_specific);
        }

        break;
    }


    return rt;
}