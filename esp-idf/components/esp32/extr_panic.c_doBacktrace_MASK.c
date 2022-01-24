#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {scalar_t__ next_pc; int /*<<< orphan*/  sp; int /*<<< orphan*/  pc; } ;
typedef  TYPE_1__ esp_backtrace_frame_t ;
struct TYPE_6__ {scalar_t__ a0; int /*<<< orphan*/  a1; int /*<<< orphan*/  pc; } ;
typedef  TYPE_2__ XtExcFrame ;

/* Variables and functions */
 int INT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(XtExcFrame *exc_frame, int depth)
{
    //Initialize stk_frame with first frame of stack
    esp_backtrace_frame_t stk_frame = {.pc = exc_frame->pc, .sp = exc_frame->a1, .next_pc = exc_frame->a0};
    FUNC4("\r\nBacktrace:");
    FUNC5(FUNC1(stk_frame.pc), stk_frame.sp);

    //Check if first frame is valid
    bool corrupted = (FUNC3(stk_frame.sp) &&
                      FUNC2((void*)FUNC1(stk_frame.pc))) ?
                      false : true;
    uint32_t i = ((depth <= 0) ? INT32_MAX : depth) - 1;    //Account for stack frame that's already printed
    while (i-- > 0 && stk_frame.next_pc != 0 && !corrupted) {
        if (!FUNC0(&stk_frame)) {    //Get next stack frame
            corrupted = true;
        }
        FUNC5(FUNC1(stk_frame.pc), stk_frame.sp);
    }

    //Print backtrace termination marker
    if (corrupted) {
        FUNC4(" |<-CORRUPTED");
    } else if (stk_frame.next_pc != 0) {    //Backtrace continues
        FUNC4(" |<-CONTINUES");
    }
    FUNC4("\r\n");
}