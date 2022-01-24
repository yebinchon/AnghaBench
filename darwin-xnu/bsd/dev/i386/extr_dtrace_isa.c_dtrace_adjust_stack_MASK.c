#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ user_addr_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ int64_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_4__ {size_t cpu_id; } ;
struct TYPE_3__ {scalar_t__ cpuc_missing_tos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* CPU ; 
 int /*<<< orphan*/  CPU_DTRACE_ENTRY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cpu_core ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(uint64_t **pcstack, int *pcstack_limit, user_addr_t *pc,
                    user_addr_t sp)
{
    int64_t missing_tos;
    int rc = 0;
    boolean_t is64Bit = FUNC5(FUNC2());

    FUNC0(pc != NULL);

    if (FUNC1(CPU_DTRACE_ENTRY)) {
        /*
         * If we found ourselves in an entry probe, the frame pointer has not
         * yet been pushed (that happens in the
         * function prologue).  The best approach is to
	 * add the current pc as a missing top of stack,
         * and back the pc up to the caller, which is stored  at the
         * current stack pointer address since the call
         * instruction puts it there right before
         * the branch.
         */

        missing_tos = *pc;

        if (is64Bit)
            *pc = FUNC4(sp);
        else
            *pc = FUNC3(sp);
    } else {
        /*
         * We might have a top of stack override, in which case we just
         * add that frame without question to the top.  This
         * happens in return probes where you have a valid
         * frame pointer, but it's for the callers frame
         * and you'd like to add the pc of the return site
         * to the frame.
         */
        missing_tos = cpu_core[CPU->cpu_id].cpuc_missing_tos;
    }

    if (missing_tos != 0) {
        if (pcstack != NULL && pcstack_limit != NULL) {
            /*
	     * If the missing top of stack has been filled out, then
	     * we add it and adjust the size.
             */
	    *(*pcstack)++ = missing_tos;
	    (*pcstack_limit)--;
	}
        /*
	 * return 1 because we would have changed the
	 * stack whether or not it was passed in.  This
	 * ensures the stack count is correct
	 */
         rc = 1;
    }
    return rc;
}