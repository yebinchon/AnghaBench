#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* tBTM_RAND_ENC_CB ) (TYPE_1__*) ;
struct TYPE_6__ {scalar_t__ status; int /*<<< orphan*/  param_len; scalar_t__ opcode; int /*<<< orphan*/ * param_buf; } ;
typedef  TYPE_1__ tBTM_RAND_ENC ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BT_OCTET16_LEN ; 
 int /*<<< orphan*/  BT_OCTET8_LEN ; 
 scalar_t__ HCI_BLE_RAND ; 
 scalar_t__ HCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5 (UINT8 *p, UINT16 op_code, tBTM_RAND_ENC_CB *p_enc_cplt_cback)
{
    tBTM_RAND_ENC   params;
    UINT8           *p_dest = params.param_buf;

    FUNC0 ("btm_ble_rand_enc_complete");

    FUNC3(&params, 0, sizeof(tBTM_RAND_ENC));

    /* If there was a callback address for vcs complete, call it */
    if (p_enc_cplt_cback && p) {
        /* Pass paramters to the callback function */
        FUNC1(params.status, p); /* command status */

        if (params.status == HCI_SUCCESS) {
            params.opcode = op_code;

            if (op_code == HCI_BLE_RAND) {
                params.param_len = BT_OCTET8_LEN;
            } else {
                params.param_len = BT_OCTET16_LEN;
            }

            FUNC2(p_dest, p, params.param_len);  /* Fetch return info from HCI event message */
        }
        if (p_enc_cplt_cback) {
            (*p_enc_cplt_cback)(&params);    /* Call the Encryption complete callback function */
        }
    }
}