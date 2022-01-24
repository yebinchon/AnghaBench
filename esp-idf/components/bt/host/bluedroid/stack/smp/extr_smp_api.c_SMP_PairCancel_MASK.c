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
struct TYPE_4__ {scalar_t__ state; void* is_pair_cancel; int /*<<< orphan*/  pairing_bda; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ tSMP_CB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  void* BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FALSE ; 
 int /*<<< orphan*/  SMP_AUTH_CMPL_EVT ; 
 int /*<<< orphan*/  SMP_PAIR_FAIL_UNKNOWN ; 
 scalar_t__ SMP_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ smp_cb ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

BOOLEAN FUNC4 (BD_ADDR bd_addr)
{
    tSMP_CB   *p_cb = &smp_cb;
    UINT8     err_code = SMP_PAIR_FAIL_UNKNOWN;
    BOOLEAN   status = FALSE;

    FUNC0 ("SMP_CancelPair state=%d flag=0x%x ", p_cb->state, p_cb->flags);
    if ( (p_cb->state != SMP_STATE_IDLE)  &&
            (!FUNC2 (p_cb->pairing_bda, bd_addr, BD_ADDR_LEN)) ) {
        p_cb->is_pair_cancel = TRUE;
        FUNC1("Cancel Pairing: set fail reason Unknown");
        FUNC3(p_cb, SMP_AUTH_CMPL_EVT, &err_code);
        status = TRUE;
    }

    return status;
}