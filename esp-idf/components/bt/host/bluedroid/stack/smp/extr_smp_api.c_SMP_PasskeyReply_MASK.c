#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cb_evt; scalar_t__ state; scalar_t__ selected_association_model; int /*<<< orphan*/  tk; int /*<<< orphan*/  pairing_bda; } ;
typedef  TYPE_1__ tSMP_CB ;
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ UINT32 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 scalar_t__ BTM_MAX_PASSKEY_VAL ; 
 int /*<<< orphan*/  SMP_AUTH_CMPL_EVT ; 
 scalar_t__ SMP_MODEL_SEC_CONN_PASSKEY_ENT ; 
 scalar_t__ SMP_PASSKEY_ENTRY_FAIL ; 
 scalar_t__ SMP_PASSKEY_REQ_EVT ; 
 int /*<<< orphan*/  SMP_SC_KEY_READY_EVT ; 
 scalar_t__ SMP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ smp_cb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 

void FUNC7 (BD_ADDR bd_addr, UINT8 res, UINT32 passkey)
{
    tSMP_CB *p_cb = & smp_cb;
    UINT8   failure = SMP_PASSKEY_ENTRY_FAIL;

    FUNC1 ("SMP_PasskeyReply: Key: %d  Result:%d",
                     passkey, res);

    /* If timeout already expired or has been canceled, ignore the reply */
    if (p_cb->cb_evt != SMP_PASSKEY_REQ_EVT) {
        FUNC2 ("SMP_PasskeyReply() - Wrong State: %d", p_cb->state);
        return;
    }

    if (FUNC4 (bd_addr, p_cb->pairing_bda, BD_ADDR_LEN) != 0) {
        FUNC0 ("SMP_PasskeyReply() - Wrong BD Addr");
        return;
    }

    if (FUNC3 (bd_addr) == NULL) {
        FUNC0 ("SMP_PasskeyReply() - no dev CB");
        return;
    }

    if (passkey > BTM_MAX_PASSKEY_VAL || res != SMP_SUCCESS) {
        FUNC2 ("SMP_PasskeyReply() - Wrong key len: %d or passkey entry fail", passkey);
        /* send pairing failure */
        FUNC6(p_cb, SMP_AUTH_CMPL_EVT, &failure);

    } else if (p_cb->selected_association_model == SMP_MODEL_SEC_CONN_PASSKEY_ENT) {
        FUNC6(&smp_cb, SMP_SC_KEY_READY_EVT, &passkey);
    } else {
        FUNC5(p_cb->tk, passkey);
    }

    return;
}