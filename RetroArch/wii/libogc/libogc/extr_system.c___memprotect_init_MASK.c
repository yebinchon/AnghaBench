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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int IM_MEM0 ; 
 int IM_MEM1 ; 
 int IM_MEM2 ; 
 int IM_MEM3 ; 
 int /*<<< orphan*/  IM_MEMADDRESS ; 
 int /*<<< orphan*/  IRQ_MEM0 ; 
 int /*<<< orphan*/  IRQ_MEM1 ; 
 int /*<<< orphan*/  IRQ_MEM2 ; 
 int /*<<< orphan*/  IRQ_MEM3 ; 
 int /*<<< orphan*/  IRQ_MEMADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __MEMInterruptHandler ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int* _memReg ; 
 int /*<<< orphan*/  mem_resetinfo ; 

__attribute__((used)) static void FUNC6()
{
	u32 level;

	FUNC2(level);

	FUNC4((IM_MEM0|IM_MEM1|IM_MEM2|IM_MEM3));

	_memReg[16] = 0;
	_memReg[8] = 255;

	FUNC0(IRQ_MEM0,__MEMInterruptHandler,NULL);
	FUNC0(IRQ_MEM1,__MEMInterruptHandler,NULL);
	FUNC0(IRQ_MEM2,__MEMInterruptHandler,NULL);
	FUNC0(IRQ_MEM3,__MEMInterruptHandler,NULL);
	FUNC0(IRQ_MEMADDRESS,__MEMInterruptHandler,NULL);

	FUNC1(&mem_resetinfo);
	FUNC5(IM_MEMADDRESS);		//only enable memaddress irq atm

	FUNC3(level);
}