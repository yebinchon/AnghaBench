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
typedef  int uint32_t ;
struct TYPE_3__ {int pc; int a1; int a0; } ;
typedef  TYPE_1__ XtExcFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(XtExcFrame *frame)
{
    uint32_t i = 0, pc = frame->pc, sp = frame->a1;
    FUNC1("\r\nBacktrace:");
    /* Do not check sanity on first entry, PC could be smashed. */
    FUNC2(pc, sp);
    pc = frame->a0;
    while (i++ < 100) {
        uint32_t psp = sp;
        if (!FUNC0(sp) || i++ > 100) {
            break;
        }
        sp = *((uint32_t *) (sp - 0x10 + 4));
        FUNC2(pc - 3, sp); // stack frame addresses are return addresses, so subtract 3 to get the CALL address
        pc = *((uint32_t *) (psp - 0x10));
        if (pc < 0x40000000) {
            break;
        }
    }
    FUNC1("\r\n\r\n");
}