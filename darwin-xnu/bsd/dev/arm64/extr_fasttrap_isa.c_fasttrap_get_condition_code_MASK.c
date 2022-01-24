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
struct TYPE_5__ {int /*<<< orphan*/  ftt_instr; scalar_t__ ftt_thumb; } ;
typedef  TYPE_1__ fasttrap_tracepoint_t ;
struct TYPE_6__ {int /*<<< orphan*/  cpsr; } ;
typedef  TYPE_2__ arm_saved_state32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int  
FUNC4(arm_saved_state32_t *regs32, fasttrap_tracepoint_t *tp)
{
	/* Default to always execute */
	int condition_code = 0xE; 
	if (tp->ftt_thumb) {
		uint32_t itstate = FUNC1(regs32->cpsr);
		if (itstate != 0) { 
			/* In IT block, make sure it's the last statement in the block */
			FUNC3(FUNC2(itstate));
			condition_code = itstate >> 4;
		}    
	} else {
		condition_code = FUNC0(tp->ftt_instr);
	}    

	return condition_code;
}