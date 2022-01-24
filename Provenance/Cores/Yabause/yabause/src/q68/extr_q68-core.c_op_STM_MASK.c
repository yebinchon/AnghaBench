#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_9__ {int ea_addr; int fault_addr; int fault_status; int* A; int /*<<< orphan*/ * DA; int /*<<< orphan*/  exception; } ;
typedef  TYPE_1__ Q68State ;

/* Variables and functions */
 int /*<<< orphan*/  ACCESS_WRITE ; 
 scalar_t__ EA_ADDRESS_REG ; 
 scalar_t__ EA_DATA_REG ; 
 int EA_INDIRECT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ EA_POSTINCREMENT ; 
 scalar_t__ EA_PREDECREMENT ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  EX_ADDRESS_ERROR ; 
 int FAULT_STATUS_IN_DATA ; 
 int FAULT_STATUS_RW_WRITE ; 
 unsigned int FUNC2 (TYPE_1__*) ; 
 int SIZE_L ; 
 int SIZE_W ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC8(Q68State *state, uint32_t opcode)
{
    /* EXT.* is coded as MOVEM.* reglist,Dn */
    if (FUNC0(opcode) == EA_DATA_REG) {
        return FUNC6(state, opcode);
    }

    unsigned int regmask = FUNC2(state);
    int size = (opcode & 0x0040) ? SIZE_L : SIZE_W;
    if (FUNC0(opcode) <= EA_ADDRESS_REG
     || FUNC0(opcode) == EA_POSTINCREMENT  // Not allowed for store
    ) {
        return FUNC7(state, opcode);
    }

    /* Avoid modifying the register during address resolution */
    uint16_t safe_ea;
    if (FUNC0(opcode) == EA_PREDECREMENT) {
        safe_ea = EA_INDIRECT<<3 | FUNC1(opcode);
    } else {
        safe_ea = opcode;
    }
    int cycles = FUNC5(state, safe_ea, SIZE_W, ACCESS_WRITE);
    if (cycles < 0) {
        return FUNC7(state, opcode);
    }
#ifndef Q68_DISABLE_ADDRESS_ERROR
    if (state->ea_addr & 1) {
        state->exception = EX_ADDRESS_ERROR;
        state->fault_addr = state->ea_addr;
        state->fault_status = FAULT_STATUS_IN_DATA
                            | FAULT_STATUS_RW_WRITE;
        return 0;
    }
#endif

    if (FUNC0(opcode) == EA_PREDECREMENT) {
        /* Register order is reversed in predecrement mode */
        int reg;
        for (reg = 15; reg >= 0; reg--, regmask >>= 1) {
            if (regmask & 1) {
                if (size == SIZE_W) {
                    state->ea_addr -= 2;
                    FUNC3(state, state->ea_addr, state->DA[reg]);
                    cycles += 4;
                } else {
                    state->ea_addr -= 4;
                    FUNC4(state, state->ea_addr, state->DA[reg]);
                    cycles += 8;
                }
            }
        }
        state->A[FUNC1(opcode)] = state->ea_addr;
    } else {
        int reg;
        for (reg = 0; reg < 16; reg++, regmask >>= 1) {
            if (regmask & 1) {
                if (size == SIZE_W) {
                    FUNC3(state, state->ea_addr, state->DA[reg]);
                    state->ea_addr += 2;
                    cycles += 4;
                } else {
                    FUNC4(state, state->ea_addr, state->DA[reg]);
                    state->ea_addr += 4;
                    cycles += 8;
                }
            }
        }
    }

    return 4 + cycles;
}