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
typedef  int /*<<< orphan*/  tBTM_CB ;
struct TYPE_3__ {int /*<<< orphan*/  trace_level; void* sec_pending_q; void* page_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_INITIAL_TRACE_LEVEL ; 
 int /*<<< orphan*/  BTM_SEC_MODE_SP ; 
 int /*<<< orphan*/  BT_TRACE_LEVEL_NONE ; 
 int /*<<< orphan*/  QUEUE_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ btm_cb ; 
 int /*<<< orphan*/ * btm_cb_ptr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10 (void)
{
#if BTM_DYNAMIC_MEMORY
    btm_cb_ptr = (tBTM_CB *)osi_malloc(sizeof(tBTM_CB));
#endif /* #if BTM_DYNAMIC_MEMORY */
    /* All fields are cleared; nonzero fields are reinitialized in appropriate function */
    FUNC8(&btm_cb, 0, sizeof(tBTM_CB));
    btm_cb.page_queue = FUNC7(QUEUE_SIZE_MAX);
    btm_cb.sec_pending_q = FUNC7(QUEUE_SIZE_MAX);

#if defined(BTM_INITIAL_TRACE_LEVEL)
    btm_cb.trace_level = BTM_INITIAL_TRACE_LEVEL;
#else
    btm_cb.trace_level = BT_TRACE_LEVEL_NONE;
#endif
    /* Initialize BTM component structures */
    FUNC4();                  /* Inquiry Database and Structures */
    FUNC0();                     /* ACL Database and Structures */
#if (SMP_INCLUDED == TRUE)
    FUNC6(BTM_SEC_MODE_SP);      /* Security Manager Database and Structures */
#endif  ///SMP_INCLUDED == TRUE
#if BTM_SCO_INCLUDED == TRUE
    FUNC5();                     /* SCO Database and Structures (If included) */
#endif

    FUNC3();                     /* Device Manager Structures & HCI_Reset */
#if BLE_INCLUDED == TRUE
    FUNC1();
    FUNC2();
#endif
}