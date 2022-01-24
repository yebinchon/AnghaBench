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
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SYS_PROTECTCHANMAX ; 
 int SYS_PROTECTRDWR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int,int) ; 
 int FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int* _memReg ; 

void FUNC8(u32 chan,void *addr,u32 bytes,u32 cntrl)
{
	u16 rcntrl;
	u32 pstart,pend,level;

	if(chan<SYS_PROTECTCHANMAX) {
		pstart = ((u32)addr)&~0x3ff;
		pend = ((((u32)addr)+bytes)+1023)&~0x3ff;
		FUNC0((void*)pstart,(pend-pstart));

		FUNC2(level);

		FUNC7(FUNC1(chan));
		_memReg[chan<<2] = FUNC5(pstart,10,16);
		_memReg[(chan<<2)+1] = FUNC5(pend,10,16);

		rcntrl = _memReg[8];
		rcntrl = (rcntrl&~(FUNC4(3,(chan<<1),2)))|(FUNC4(cntrl,(chan<<1),2));
		_memReg[8] = rcntrl;

		if(cntrl==SYS_PROTECTRDWR)
			FUNC6(FUNC1(chan));

		FUNC3(level);
	}
}