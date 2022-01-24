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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  Q68State ;

/* Variables and functions */
 scalar_t__ EA_ADDRESS_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INSN_GET_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SIZE_W ; 
 int /*<<< orphan*/  current_entry ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int reg ; 

__attribute__((used)) static int FUNC6(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    FUNC3(current_entry, reg*4);

    int cycles;
    if (FUNC0(opcode) == EA_ADDRESS_REG) {
        return FUNC5(state, opcode);
    }
    FUNC4(state, opcode, SIZE_W, 0, &cycles, 2);
    if (cycles < 0) {
        return 1;
    }

    FUNC1(current_entry, 10 + cycles);
    /* The JIT code takes care of adding the extra 34 cycles of exception
     * processing if necessary */
    FUNC2(current_entry);
    return 0;
}