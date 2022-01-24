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
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct regs {int dummy; } ;
struct arm_saved_state {int dummy; } ;

/* Variables and functions */
#define  ARM64_CPSR 132 
#define  ARM64_FP 131 
#define  ARM64_LR 130 
#define  ARM64_PC 129 
#define  ARM64_SP 128 
 int /*<<< orphan*/  ARM_CPSR ; 
 int /*<<< orphan*/  ARM_FP ; 
 int /*<<< orphan*/  ARM_LR ; 
 int /*<<< orphan*/  ARM_PC ; 
 int /*<<< orphan*/  ARM_SP ; 
 int /*<<< orphan*/  CPU_DTRACE_ILLOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_saved_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct arm_saved_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct arm_saved_state*) ; 

uint64_t
FUNC4(struct regs * savearea, uint_t reg)
{
	struct arm_saved_state *regs = (struct arm_saved_state *) savearea;

	if (regs == NULL) {
		FUNC0(CPU_DTRACE_ILLOP);
		return (0);
	}

	if (FUNC3(regs)) {
		// Fix special registers if user is 32 bits
		switch (reg) {
			case ARM64_FP:
				reg = ARM_FP;
			break;
			case ARM64_SP:
				reg = ARM_SP;
			break;
			case ARM64_LR:
				reg = ARM_LR;
			break;
			case ARM64_PC:
				reg = ARM_PC;
			break;
			case ARM64_CPSR:
				reg = ARM_CPSR;
			break;
		}
	}

	if (!FUNC1(regs, reg)) {
		FUNC0(CPU_DTRACE_ILLOP);
		return (0);
	}

	return ((uint64_t)FUNC2(regs, reg));
}