#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  ea_addr; int /*<<< orphan*/ * A; } ;
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
 int /*<<< orphan*/  INSN_GET_REG ; 
 int /*<<< orphan*/  SIZE_W ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 size_t reg ; 

__attribute__((used)) static int FUNC4(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;

    /* Register, predecrement, postincrement, immediate modes are illegal */
    if (FUNC0(opcode) == EA_DATA_REG
     || FUNC0(opcode) == EA_ADDRESS_REG
     || FUNC0(opcode) == EA_POSTINCREMENT
     || FUNC0(opcode) == EA_PREDECREMENT
     || (FUNC0(opcode) == EA_MISC && FUNC1(opcode) == EA_MISC_IMMEDIATE)
    ) {
        return FUNC3(state, opcode);
    }

    int cycles = FUNC2(state, opcode, SIZE_W, ACCESS_READ);
    if (cycles < 0) {
        return FUNC3(state, opcode);
    }
    if (cycles % 4 == 2) {  // d(An,ix) and d(PC,ix) take 2 extra cycles
        cycles += 2;
    }
    state->A[reg] = state->ea_addr;
    return cycles;
}