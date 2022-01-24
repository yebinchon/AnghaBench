#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UWORD ;
typedef  int UBYTE ;
typedef  int SBYTE ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int* MONITOR_optype6502 ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static UWORD FUNC3(UWORD addr)
{
	int caddr;
	caddr = addr;
	for (;;) {
		UBYTE opcode;
		if (caddr > (UWORD) (addr + 0x7e)) {
			FUNC2("Conditional loop containing instruction at %04X not detected\n", addr);
			break;
		}
		opcode = FUNC0(caddr);
		if ((opcode & 0x1f) == 0x10) {
			/* branch */
			UWORD target = caddr + 2 + (SBYTE) FUNC0(caddr + 1);
			if (target <= addr) {
				addr = FUNC1(target);
				break;
			}
		}
		caddr += MONITOR_optype6502[opcode] & 3;
	}
	return addr;
}