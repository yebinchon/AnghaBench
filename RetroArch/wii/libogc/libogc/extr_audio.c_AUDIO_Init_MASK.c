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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;

/* Variables and functions */
 int AI_AIINTMSK ; 
 int AI_AIINTVLD ; 
 size_t AI_CONTROL ; 
 int AI_DMAFR ; 
 int AI_PSTAT ; 
 int AI_SAMPLERATE_48KHZ ; 
 int AI_SCRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_AI ; 
 int /*<<< orphan*/  IRQ_DSP_AI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  __AIDHandler ; 
 int /*<<< orphan*/ * __AID_Callback ; 
 int __AIInitFlag ; 
 int /*<<< orphan*/  __AISHandler ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * __AIS_Callback ; 
 int /*<<< orphan*/ * __CallbackStack ; 
 int /*<<< orphan*/ * __OldStack ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int* _aiReg ; 
 void* bound_32KHz ; 
 void* bound_48KHz ; 
 void* buffer ; 
 void* max_wait ; 
 void* min_wait ; 
 void* FUNC7 (int) ; 

void FUNC8(u8 *stack)
{
	u32 rate,level;

	if(!__AIInitFlag) {
		bound_32KHz = FUNC7(31524);
		bound_48KHz = FUNC7(42024);
		min_wait = FUNC7(42000);
		max_wait = FUNC7(63000);
		buffer = FUNC7(3000);

		_aiReg[AI_CONTROL] &= ~(AI_AIINTVLD|AI_AIINTMSK|AI_PSTAT);
		_aiReg[1] = 0;
		_aiReg[3] = 0;

		_aiReg[AI_CONTROL] = (_aiReg[AI_CONTROL]&~AI_SCRESET)|AI_SCRESET;

		rate = (FUNC4(_aiReg[AI_CONTROL],6,1))^1;
		if(rate==AI_SAMPLERATE_48KHZ) {
			_aiReg[AI_CONTROL] &= ~AI_DMAFR;
			FUNC2(level);
			FUNC5();
			_aiReg[AI_CONTROL] |= AI_DMAFR;
			FUNC3(level);
		}

		__AID_Callback = NULL;

		__OldStack = NULL;	// davem - use it or lose it
							// looks like 3.4 isn't picking up the use from the asm below
		__CallbackStack = stack;

		FUNC1(IRQ_DSP_AI,__AIDHandler,NULL);
		FUNC6(FUNC0(IRQ_DSP_AI));
#if defined(HW_DOL)
		__AIS_Callback = NULL;

		IRQ_Request(IRQ_AI,__AISHandler,NULL);
		__UnmaskIrq(IRQMASK(IRQ_AI));
#endif
		__AIInitFlag = 1;
	}
}