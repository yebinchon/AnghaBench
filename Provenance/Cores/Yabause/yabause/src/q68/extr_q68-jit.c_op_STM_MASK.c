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
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  Q68State ;

/* Variables and functions */
 int /*<<< orphan*/  ACCESS_WRITE ; 
 scalar_t__ EA_ADDRESS_REG ; 
 scalar_t__ EA_DATA_REG ; 
 int EA_INDIRECT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ EA_POSTINCREMENT ; 
 scalar_t__ EA_PREDECREMENT ; 
 int FUNC1 (int) ; 
 int FAULT_STATUS_IN_DATA ; 
 int FAULT_STATUS_RW_WRITE ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int SIZE_L ; 
 int SIZE_W ; 
 int /*<<< orphan*/  current_entry ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC13(Q68State *state, uint32_t opcode)
{
    /* EXT.* is coded as MOVEM.* reglist,Dn */
    if (FUNC0(opcode) == EA_DATA_REG) {
        return FUNC11(state, opcode);
    }

    unsigned int regmask = FUNC2(state);
    int size = (opcode & 0x0040) ? SIZE_L : SIZE_W;
    if (FUNC0(opcode) <= EA_ADDRESS_REG
     || FUNC0(opcode) == EA_POSTINCREMENT  // Not allowed for store
    ) {
        return FUNC12(state, opcode);
    }

    /* Avoid modifying the register during address resolution */
    uint16_t safe_ea;
    if (FUNC0(opcode) == EA_PREDECREMENT) {
        safe_ea = EA_INDIRECT<<3 | FUNC1(opcode);
    } else {
        safe_ea = opcode;
    }
    int cycles = FUNC10(state, safe_ea, SIZE_W, ACCESS_WRITE);
    if (cycles < 0) {
        return FUNC12(state, opcode);
    }
    if (regmask != 0) {  // FIXME: does a real 68000 choke even if regmask==0?
#ifndef Q68_DISABLE_ADDRESS_ERROR
        FUNC4(current_entry, opcode,
                                  FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_WRITE);
#endif
    }

    if (FUNC0(opcode) == EA_PREDECREMENT) {
        /* Register order is reversed in predecrement mode */
        int reg;
        for (reg = 15; reg >= 0; reg--, regmask >>= 1) {
            if (regmask & 1) {
                if (size == SIZE_W) {
                    FUNC7(current_entry, reg*4);
                    cycles += 4;
                } else {
                    FUNC6(current_entry, reg*4);
                    cycles += 8;
                }
            }
        }
        FUNC5(current_entry, (8 + FUNC1(opcode)) * 4);
    } else {
        int reg;
        for (reg = 0; reg < 16; reg++, regmask >>= 1) {
            if (regmask & 1) {
                if (size == SIZE_W) {
                    FUNC9(current_entry, reg*4);
                    cycles += 4;
                } else {
                    FUNC8(current_entry, reg*4);
                    cycles += 8;
                }
            }
        }
    }

    FUNC3(current_entry, 4 + cycles);
    return 0;
}