#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tGATT_VALUE ;
struct TYPE_3__ {int /*<<< orphan*/  pending_ind_q; } ;
typedef  TYPE_1__ tGATT_TCB ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FIXED_QUEUE_MAX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

tGATT_VALUE *FUNC4(tGATT_TCB  *p_tcb, tGATT_VALUE *p_ind)
{
    tGATT_VALUE   *p_buf;
    FUNC0 ("gatt_add_pending_ind");
    if ((p_buf = (tGATT_VALUE *)FUNC3((UINT16)sizeof(tGATT_VALUE))) != NULL) {
        FUNC0 ("enqueue a pending indication");
        FUNC2(p_buf, p_ind, sizeof(tGATT_VALUE));
    FUNC1(p_tcb->pending_ind_q, p_buf, FIXED_QUEUE_MAX_TIMEOUT);
    }
    return p_buf;
}