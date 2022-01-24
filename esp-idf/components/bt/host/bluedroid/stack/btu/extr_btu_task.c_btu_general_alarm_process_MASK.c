#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* tUSER_TIMEOUT_FUNC ) (TYPE_2__*) ;
typedef  int /*<<< orphan*/  tCONN_CB ;
struct TYPE_20__ {int event; scalar_t__ param; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* timer_cb ) (TYPE_2__*) ;TYPE_2__* p_tle; } ;
struct TYPE_18__ {TYPE_1__* timer_reg; } ;
typedef  TYPE_2__ TIMER_LIST_ENT ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int BTU_MAX_REG_TIMER ; 
#define  BTU_TTYPE_ATT_WAIT_FOR_IND_ACK 155 
#define  BTU_TTYPE_ATT_WAIT_FOR_RSP 154 
#define  BTU_TTYPE_AVDT_CCB_IDLE 153 
#define  BTU_TTYPE_AVDT_CCB_RET 152 
#define  BTU_TTYPE_AVDT_CCB_RSP 151 
#define  BTU_TTYPE_AVDT_SCB_TC 150 
#define  BTU_TTYPE_BLE_GAP_FAST_ADV 149 
#define  BTU_TTYPE_BLE_GAP_LIM_DISC 148 
#define  BTU_TTYPE_BLE_INQUIRY 147 
#define  BTU_TTYPE_BLE_OBSERVE 146 
#define  BTU_TTYPE_BLE_RANDOM_ADDR 145 
#define  BTU_TTYPE_BLE_SCAN 144 
#define  BTU_TTYPE_BNEP 143 
#define  BTU_TTYPE_BTM_DEV_CTL 142 
#define  BTU_TTYPE_BTM_RMT_NAME 141 
#define  BTU_TTYPE_HID_HOST_REPAGE_TO 140 
#define  BTU_TTYPE_L2CAP_CHNL 139 
#define  BTU_TTYPE_L2CAP_FCR_ACK 138 
#define  BTU_TTYPE_L2CAP_HOLD 137 
#define  BTU_TTYPE_L2CAP_INFO 136 
#define  BTU_TTYPE_L2CAP_LINK 135 
#define  BTU_TTYPE_L2CAP_UPDA_CONN_PARAMS 134 
#define  BTU_TTYPE_MCA_CCB_RSP 133 
#define  BTU_TTYPE_RFCOMM_MFC 132 
#define  BTU_TTYPE_RFCOMM_PORT 131 
#define  BTU_TTYPE_SDP 130 
#define  BTU_TTYPE_SMP_PAIRING_CMD 129 
#define  BTU_TTYPE_USER_FUNC 128 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_13__ btu_cb ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC16(void *param)
{
    TIMER_LIST_ENT *p_tle = (TIMER_LIST_ENT *)param;
    FUNC0(p_tle != NULL);

    switch (p_tle->event) {
    case BTU_TTYPE_BTM_DEV_CTL:
        FUNC4(p_tle);
        break;

    case BTU_TTYPE_L2CAP_LINK:
    case BTU_TTYPE_L2CAP_CHNL:
    case BTU_TTYPE_L2CAP_HOLD:
    case BTU_TTYPE_L2CAP_INFO:
    case BTU_TTYPE_L2CAP_FCR_ACK:
    case BTU_TTYPE_L2CAP_UPDA_CONN_PARAMS:
        FUNC9 (p_tle);
        break;
#if (defined(SDP_INCLUDED) && SDP_INCLUDED == TRUE)
    case BTU_TTYPE_SDP:
        sdp_conn_timeout ((tCONN_CB *)p_tle->param);
        break;
#endif
    case BTU_TTYPE_BTM_RMT_NAME:
        FUNC5();
        break;
#if (defined(RFCOMM_INCLUDED) && RFCOMM_INCLUDED == TRUE)
    case BTU_TTYPE_RFCOMM_MFC:
    case BTU_TTYPE_RFCOMM_PORT:
        rfcomm_process_timeout (p_tle);
        break;
#endif
#if ((defined(BNEP_INCLUDED) && BNEP_INCLUDED == TRUE))
    case BTU_TTYPE_BNEP:
        bnep_process_timeout(p_tle);
        break;
#endif


#if (defined(AVDT_INCLUDED) && AVDT_INCLUDED == TRUE)
    case BTU_TTYPE_AVDT_CCB_RET:
    case BTU_TTYPE_AVDT_CCB_RSP:
    case BTU_TTYPE_AVDT_CCB_IDLE:
    case BTU_TTYPE_AVDT_SCB_TC:
        avdt_process_timeout(p_tle);
        break;
#endif

#if (defined(HID_HOST_INCLUDED) && HID_HOST_INCLUDED == TRUE)
    case BTU_TTYPE_HID_HOST_REPAGE_TO :
        hidh_proc_repage_timeout(p_tle);
        break;
#endif

#if (defined(BLE_INCLUDED) && BLE_INCLUDED == TRUE)
    case BTU_TTYPE_BLE_INQUIRY:
    case BTU_TTYPE_BLE_GAP_LIM_DISC:
    case BTU_TTYPE_BLE_RANDOM_ADDR:
    case BTU_TTYPE_BLE_GAP_FAST_ADV:
    case BTU_TTYPE_BLE_SCAN:
    case BTU_TTYPE_BLE_OBSERVE:
        btm_ble_timeout(p_tle);
        break;

    case BTU_TTYPE_ATT_WAIT_FOR_RSP:
        gatt_rsp_timeout(p_tle);
        break;

    case BTU_TTYPE_ATT_WAIT_FOR_IND_ACK:
        gatt_ind_ack_timeout(p_tle);
        break;

#if (defined(SMP_INCLUDED) && SMP_INCLUDED == TRUE)
    case BTU_TTYPE_SMP_PAIRING_CMD:
        smp_rsp_timeout(p_tle);
        break;
#endif

#endif

#if (MCA_INCLUDED == TRUE)
    case BTU_TTYPE_MCA_CCB_RSP:
        FUNC10(p_tle);
        break;
#endif
    case BTU_TTYPE_USER_FUNC: {
        tUSER_TIMEOUT_FUNC  *p_uf = (tUSER_TIMEOUT_FUNC *)p_tle->param;
        (*p_uf)(p_tle);
    }
    break;

    default:;
        int i = 0;
        BOOLEAN handled = FALSE;

        for (; !handled && i < BTU_MAX_REG_TIMER; i++) {
            if (btu_cb.timer_reg[i].timer_cb == NULL) {
                continue;
            }
            if (btu_cb.timer_reg[i].p_tle == p_tle) {
                btu_cb.timer_reg[i].timer_cb(p_tle);
                handled = TRUE;
            }
        }
        break;
    }
}