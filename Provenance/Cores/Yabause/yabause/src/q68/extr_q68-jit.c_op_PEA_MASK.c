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
 int /*<<< orphan*/  ACCESS_READ ; 
 scalar_t__ EA_ADDRESS_REG ; 
 scalar_t__ EA_DATA_REG ; 
 scalar_t__ EA_MISC ; 
 scalar_t__ EA_MISC_IMMEDIATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EA_POSTINCREMENT ; 
 scalar_t__ EA_PREDECREMENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FAULT_STATUS_IN_DATA ; 
 int FAULT_STATUS_RW_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIZE_W ; 
 int /*<<< orphan*/  current_entry ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(Q68State *state, uint32_t opcode)
{
    /* SWAP is coded as PEA Dn */
    if (FUNC0(opcode) == EA_DATA_REG) {
        return FUNC6(state, opcode);
    }

    if (FUNC0(opcode) == EA_DATA_REG
     || FUNC0(opcode) == EA_ADDRESS_REG
     || FUNC0(opcode) == EA_POSTINCREMENT
     || FUNC0(opcode) == EA_PREDECREMENT
     || (FUNC0(opcode) == EA_MISC && FUNC1(opcode) == EA_MISC_IMMEDIATE)
    ) {
        return FUNC7(state, opcode);
    }

    int cycles = FUNC5(state, opcode, SIZE_W, ACCESS_READ);
    if (cycles < 0) {
        return FUNC7(state, opcode);
    }
    if (cycles % 4 == 2) {  // d(An,ix) and d(PC,ix) take 2 extra cycles
        cycles += 2;
    }

#ifndef Q68_DISABLE_ADDRESS_ERROR
    FUNC3(current_entry, opcode,
                              FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_WRITE);
#endif
    FUNC4(current_entry);
    FUNC2(current_entry, 8 + cycles);
    return 0;
}