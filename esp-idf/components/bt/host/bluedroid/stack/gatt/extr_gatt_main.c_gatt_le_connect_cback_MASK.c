#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* payload_size; int /*<<< orphan*/  att_lcid; } ;
typedef  TYPE_1__ tGATT_TCB ;
typedef  int /*<<< orphan*/  tGATTS_SRV_CHG ;
typedef  scalar_t__ tBT_TRANSPORT ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  scalar_t__ BOOLEAN ;
typedef  int* BD_ADDR ;

/* Variables and functions */
 scalar_t__ BT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  BT_TRANSPORT_LE ; 
 scalar_t__ FALSE ; 
 scalar_t__ GATT_CH_CONN ; 
 int /*<<< orphan*/  GATT_CH_OPEN ; 
 void* GATT_DEF_BLE_MTU_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  L2CAP_ATT_CID ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 TYPE_1__* FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC7 (int*,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12 (UINT16 chan, BD_ADDR bd_addr, BOOLEAN connected,
                                   UINT16 reason, tBT_TRANSPORT transport)
{

    tGATT_TCB       *p_tcb = FUNC7(bd_addr, transport);
    BOOLEAN                 check_srv_chg = FALSE;
    tGATTS_SRV_CHG          *p_srv_chg_clt = NULL;

    /* ignore all fixed channel connect/disconnect on BR/EDR link for GATT */
    if (transport == BT_TRANSPORT_BR_EDR) {
        return;
    }

    FUNC0 ("GATT   ATT protocol channel with BDA: %08x%04x is %s",
                      (bd_addr[0] << 24) + (bd_addr[1] << 16) + (bd_addr[2] << 8) + bd_addr[3],
                      (bd_addr[4] << 8) + bd_addr[5], (connected) ? "connected" : "disconnected");

    if ((p_srv_chg_clt = FUNC9(bd_addr)) != NULL) {
        check_srv_chg = TRUE;
    } else {
        if (FUNC2(bd_addr)) {
            FUNC3(bd_addr);
        }
    }

    if (connected) {
        /* do we have a channel initiating a connection? */
        if (p_tcb) {
            /* we are initiating connection */
            if ( FUNC8(p_tcb) == GATT_CH_CONN) {
                /* send callback */
                FUNC11(p_tcb, GATT_CH_OPEN);
                p_tcb->payload_size = GATT_DEF_BLE_MTU_SIZE;

                FUNC10(p_tcb);
            }
            if (check_srv_chg) {
#if (GATTS_INCLUDED == TRUE)
                FUNC5 (p_srv_chg_clt);
#endif  ///GATTS_INCLUDED == TRUE
            }
        }
        /* this is incoming connection or background connection callback */

        else {
            if ((p_tcb = FUNC4(bd_addr, BT_TRANSPORT_LE)) != NULL) {
                p_tcb->att_lcid = L2CAP_ATT_CID;

                FUNC11(p_tcb, GATT_CH_OPEN);

                p_tcb->payload_size = GATT_DEF_BLE_MTU_SIZE;

                FUNC10 (p_tcb);
                if (check_srv_chg) {
#if (GATTS_INCLUDED == TRUE)
                    FUNC5 (p_srv_chg_clt);
#endif  ///GATTS_INCLUDED == TRUE
                }
            } else {
                FUNC1("CCB max out, no rsources");
            }
        }
    } else {
        FUNC6(bd_addr, reason, transport);
        FUNC0 ("ATT disconnected");
    }
}