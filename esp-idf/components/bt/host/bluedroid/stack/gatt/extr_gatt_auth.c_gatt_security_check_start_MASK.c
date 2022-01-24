#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  transport; int /*<<< orphan*/  peer_bda; } ;
typedef  TYPE_1__ tGATT_TCB ;
typedef  int tGATT_SEC_ACTION ;
struct TYPE_13__ {TYPE_1__* p_tcb; } ;
typedef  TYPE_2__ tGATT_CLCB ;
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  tBTM_BLE_SEC_ACT ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GATT_CH_OPEN ; 
#define  GATT_SEC_ENCRYPT 132 
#define  GATT_SEC_ENCRYPT_MITM 131 
#define  GATT_SEC_ENCRYPT_NO_MITM 130 
#define  GATT_SEC_ENC_PENDING 129 
 int GATT_SEC_NONE ; 
#define  GATT_SEC_SIGN_DATA 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  gatt_enc_cmpl_cback ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

BOOLEAN FUNC11(tGATT_CLCB *p_clcb)
{
    tGATT_TCB           *p_tcb = p_clcb->p_tcb;
    tGATT_SEC_ACTION    gatt_sec_act;
    tBTM_BLE_SEC_ACT    btm_ble_sec_act;
    BOOLEAN             status = TRUE;
#if (SMP_INCLUDED == TRUE)
    tBTM_STATUS         btm_status;
#endif  ///SMP_INCLUDED == TRUE
    tGATT_SEC_ACTION    sec_act_old =  FUNC6(p_tcb);

    gatt_sec_act = FUNC5(p_clcb);

    if (sec_act_old == GATT_SEC_NONE) {
        FUNC9(p_tcb, gatt_sec_act);
    }

    switch (gatt_sec_act ) {
    case GATT_SEC_SIGN_DATA:
#if (SMP_INCLUDED == TRUE)
        FUNC1("gatt_security_check_start: Do data signing");
        FUNC10(p_clcb);
#endif  ///SMP_INCLUDED == TRUE
        break;
    case GATT_SEC_ENCRYPT:
    case GATT_SEC_ENCRYPT_NO_MITM:
    case GATT_SEC_ENCRYPT_MITM:
        if (sec_act_old < GATT_SEC_ENCRYPT) {
            FUNC1("gatt_security_check_start: Encrypt now or key upgreade first");
            FUNC4(gatt_sec_act, &btm_ble_sec_act);
#if (SMP_INCLUDED == TRUE)
            btm_status = FUNC0(p_tcb->peer_bda, p_tcb->transport , gatt_enc_cmpl_cback, &btm_ble_sec_act);
            if ( (btm_status != BTM_SUCCESS) && (btm_status != BTM_CMD_STARTED)) {
                FUNC2("gatt_security_check_start BTM_SetEncryption failed btm_status=%d", btm_status);
                status = FALSE;
            }
#endif  ///SMP_INCLUDED == TRUE
        }
        if (status) {
            FUNC3 (p_tcb, p_clcb);
        }
        break;
    case GATT_SEC_ENC_PENDING:
        FUNC3 (p_tcb, p_clcb);
        /* wait for link encrypotion to finish */
        break;
    default:
        FUNC7(TRUE, p_clcb, gatt_sec_act);
        break;
    }

    if (status == FALSE) {
        FUNC9(p_tcb, GATT_SEC_NONE);
        FUNC8(p_tcb, GATT_CH_OPEN);
    }

    return status;
}