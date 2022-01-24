#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pending_enc_clcb; int /*<<< orphan*/  sec_act; } ;
typedef  TYPE_1__ tGATT_TCB ;
struct TYPE_7__ {int /*<<< orphan*/  p_clcb; } ;
typedef  TYPE_2__ tGATT_PENDING_ENC_CLCB ;
typedef  int /*<<< orphan*/  tBT_TRANSPORT ;
typedef  scalar_t__ tBTM_STATUS ;
typedef  int UINT8 ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int BTM_SEC_FLAG_LKEY_AUTHED ; 
 scalar_t__ BTM_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GATT_SEC_ENCRYPT_MITM ; 
 scalar_t__ GATT_SEC_ENC_PENDING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

void FUNC11(BD_ADDR bd_addr, tBT_TRANSPORT transport, void *p_ref_data, tBTM_STATUS result)
{
    tGATT_TCB   *p_tcb;
    UINT8       sec_flag;
    BOOLEAN     status = FALSE;
    FUNC3(p_ref_data);

    FUNC1("gatt_enc_cmpl_cback");
    if ((p_tcb = FUNC6(bd_addr, transport)) != NULL) {
        if (FUNC7(p_tcb) == GATT_SEC_ENC_PENDING) {
            return;
        }
        tGATT_PENDING_ENC_CLCB *p_buf =
            (tGATT_PENDING_ENC_CLCB *)FUNC4(p_tcb->pending_enc_clcb, 0);
        if (p_buf != NULL) {
            if (result == BTM_SUCCESS) {
                if (FUNC7(p_tcb) == GATT_SEC_ENCRYPT_MITM ) {
                    FUNC0(bd_addr, &sec_flag, transport);

                    if (sec_flag & BTM_SEC_FLAG_LKEY_AUTHED) {
                        status = TRUE;
                    }
                } else {
                    status = TRUE;
                }
            }
            FUNC8(status , p_buf->p_clcb, p_tcb->sec_act);
            FUNC10(p_buf);
            /* start all other pending operation in queue */
            for (size_t count = FUNC5(p_tcb->pending_enc_clcb);
                 count > 0; count--) {
                p_buf = (tGATT_PENDING_ENC_CLCB *)FUNC4(p_tcb->pending_enc_clcb, 0);
                if (p_buf != NULL) {
                    FUNC9(p_buf->p_clcb);
                    FUNC10(p_buf);
                } else {
                    break;
                }
            }
        } else {
            FUNC2("Unknown operation encryption completed");
        }
    } else {
        FUNC2("enc callback for unknown bd_addr");
    }
}