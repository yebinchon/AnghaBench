#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int* A; int fault_addr; int fault_status; int /*<<< orphan*/  ea_addr; int /*<<< orphan*/  exception; } ;
typedef  TYPE_1__ Q68State ;

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
 int /*<<< orphan*/  EX_ADDRESS_ERROR ; 
 int FAULT_STATUS_IN_DATA ; 
 int FAULT_STATUS_RW_WRITE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIZE_W ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(Q68State *state, uint32_t opcode)
{
    /* SWAP is coded as PEA Dn */
    if (FUNC0(opcode) == EA_DATA_REG) {
        return FUNC4(state, opcode);
    }

    if (FUNC0(opcode) == EA_DATA_REG
     || FUNC0(opcode) == EA_ADDRESS_REG
     || FUNC0(opcode) == EA_POSTINCREMENT
     || FUNC0(opcode) == EA_PREDECREMENT
     || (FUNC0(opcode) == EA_MISC && FUNC1(opcode) == EA_MISC_IMMEDIATE)
    ) {
        return FUNC5(state, opcode);
    }

    int cycles = FUNC3(state, opcode, SIZE_W, ACCESS_READ);
    if (cycles < 0) {
        return FUNC5(state, opcode);
    }
    if (cycles % 4 == 2) {  // d(An,ix) and d(PC,ix) take 2 extra cycles
        cycles += 2;
    }
#ifndef Q68_DISABLE_ADDRESS_ERROR
    if (state->A[7] & 1) {
        state->exception = EX_ADDRESS_ERROR;
        state->fault_addr = state->A[7];
        state->fault_status = FAULT_STATUS_IN_DATA
                            | FAULT_STATUS_RW_WRITE;
        return 0;
    }
#endif
    FUNC2(state, state->ea_addr);
    return 8 + cycles;
}