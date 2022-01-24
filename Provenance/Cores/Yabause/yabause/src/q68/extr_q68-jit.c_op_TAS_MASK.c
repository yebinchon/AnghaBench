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
 scalar_t__ EA_DATA_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIZE_B ; 
 int /*<<< orphan*/  current_entry ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(Q68State *state, uint32_t opcode)
{
    if (FUNC0(opcode) == EA_ADDRESS_REG) {  // Address registers not allowed
        return FUNC5(state, opcode);
    }

    int cycles;
    FUNC3(state, opcode, SIZE_B, 1, &cycles, 1);
    if (cycles < 0) {
        /* Note that the ILLEGAL instruction is coded as TAS #imm, so it
         * will be rejected as unwriteable by ea_get() */
        return 1;
    }
    FUNC2(current_entry);
    FUNC4(state, opcode, SIZE_B);
    FUNC1(current_entry,
                        (FUNC0(opcode) == EA_DATA_REG ? 4 : 10) + cycles);
    return 0;
}