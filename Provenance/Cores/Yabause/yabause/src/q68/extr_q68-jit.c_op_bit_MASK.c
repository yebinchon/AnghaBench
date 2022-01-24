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
typedef  int /*<<< orphan*/  Q68State ;

/* Variables and functions */
 scalar_t__ EA_ADDRESS_REG ; 
 scalar_t__ EA_DATA_REG ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INSN_GET_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int SIZE_B ; 
 int SIZE_L ; 
 int /*<<< orphan*/  current_entry ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int reg ; 

__attribute__((used)) static int FUNC14(Q68State *state, uint32_t opcode)
{
    /* Check early for MOVEP (coded as BTST/BCHG/BCLR/BSET Dn,An) */
    if (FUNC0(opcode) == EA_ADDRESS_REG) {
        if (opcode & 0x0100) {
            return FUNC12(state, opcode);
        } else {
            return FUNC13(state, opcode);
        }
    }

    enum {BTST = 0, BCHG = 1, BCLR = 2, BSET = 3} op = opcode>>6 & 3;
    int cycles;

    /* Get the bit number to operate on */
    if (opcode & 0x0100) {
        /* Bit number in register */
        INSN_GET_REG;
        FUNC9(current_entry, reg*4);
        cycles = 0;
    } else {
        unsigned int bitnum = FUNC1(state);
        FUNC8(current_entry, bitnum);
        cycles = 4;
    }

    /* EA operand is 32 bits when coming from a register, 8 when from memory */
    int size = (FUNC0(opcode)==EA_DATA_REG ? SIZE_L : SIZE_B);
    int cycles_tmp;
    FUNC10(state, opcode, size, 1, &cycles_tmp, 2);
    if (cycles_tmp < 0) {
        return 1;
    }
    cycles += cycles_tmp;
    if (size == SIZE_L && (op == BCLR || op == BTST)) {
        cycles += 2;
    }

    /* Perform the operation: first test the bit, then (for non-BTST cases)
     * twiddle it as appropriate.  All size-related checking is performed
     * in BTST, so the remaining operations are unsized. */
    if (size == SIZE_B) {
        FUNC6(current_entry);
    } else {  // size == SIZE_L
        FUNC7(current_entry);
    }
    switch (op) {
      default:   break;  // case BTST: nothing to do
      case BCHG: FUNC3(current_entry); break;
      case BCLR: FUNC4(current_entry); break;
      case BSET: FUNC5(current_entry); break;
    }

    /* Update EA operand (but not for BTST) */
    if (op != BTST) {
        FUNC11(state, opcode, size);
    }

    /* Update cycle counter; note that the times for BCHG.L, BCLR.L, and
     * BSET.L are maximums (though how they vary is undocumented) */
    FUNC2(current_entry, (op==BTST ? 4 : 8) + cycles);

    return 0;
}