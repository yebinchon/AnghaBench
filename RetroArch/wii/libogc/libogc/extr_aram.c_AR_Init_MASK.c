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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_DSP_ARAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int* __ARBlockLen ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * __ARDmaCallback ; 
 int __ARFreeBlocks ; 
 int /*<<< orphan*/  __ARHandler ; 
 int __ARInit_Flag ; 
 int __ARStackPointer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int* _dspReg ; 

u32 FUNC6(u32 *stack_idx_array,u32 num_entries)
{
	u32 level;
	u32 aram_base = 0x4000;

	if(__ARInit_Flag) return aram_base;

	FUNC2(level);

	__ARDmaCallback = NULL;

	FUNC1(IRQ_DSP_ARAM,__ARHandler,NULL);
	FUNC5(FUNC0(IRQ_DSP_ARAM));

	__ARStackPointer = aram_base;
	__ARFreeBlocks = num_entries;
	__ARBlockLen = stack_idx_array;
	_dspReg[13] = (_dspReg[13]&~0xff)|(_dspReg[13]&0xff);

	FUNC4();
	__ARInit_Flag = 1;

	FUNC3(level);
	return __ARStackPointer;
}