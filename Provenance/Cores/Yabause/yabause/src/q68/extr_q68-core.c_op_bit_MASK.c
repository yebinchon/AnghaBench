#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {unsigned int* D; int /*<<< orphan*/  SR; } ;
typedef  TYPE_1__ Q68State ;

/* Variables and functions */
 int EA_ADDRESS_REG ; 
#define  EA_DATA_REG 128 
 int FUNC0 (int) ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  INSN_GET_REG ; 
 int SIZE_B ; 
 int SIZE_L ; 
 int /*<<< orphan*/  SR_Z ; 
 int FUNC2 (TYPE_1__*,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 size_t reg ; 

__attribute__((used)) static int FUNC6(Q68State *state, uint32_t opcode)
{
    /* Check early for MOVEP (coded as BTST/BCHG/BCLR/BSET Dn,An) */
    if (FUNC0(opcode) == EA_ADDRESS_REG) {
        if (opcode & 0x0100) {
            return FUNC4(state, opcode);
        } else {
            return FUNC5(state, opcode);
        }
    }

    enum {BTST = 0, BCHG = 1, BCLR = 2, BSET = 3} op = opcode>>6 & 3;
    int cycles;

    /* Get the bit number to operate on */
    unsigned int bitnum;
    if (opcode & 0x0100) {
        /* Bit number in register */
        INSN_GET_REG;
        bitnum = state->D[reg];
        cycles = 0;
    } else {
        bitnum = FUNC1(state);
        cycles = 4;
    }

    /* EA operand is 32 bits when coming from a register, 8 when from memory */
    int size;
    switch (FUNC0(opcode)) {
      case EA_DATA_REG:
        size = SIZE_L;
        bitnum %= 32;
        break;
      default:
        size = SIZE_B;
        bitnum %= 8;
        break;
    }
    int cycles_tmp;
    uint32_t value = FUNC2(state, opcode, size, 1, &cycles_tmp);
    if (cycles_tmp < 0) {
        return 0;
    }
    cycles += cycles_tmp;
    if (size == SIZE_L && (op == BCLR || op == BTST)) {
        cycles += 2;
    }

    /* Perform the operation */
    if ((value >> bitnum) & 1) {
        state->SR &= ~SR_Z;
    } else {
        state->SR |= SR_Z;
    }
    switch (op) {
      case BTST: /* Nothing to do */      break;
      case BCHG: value ^=   1 << bitnum;  break;
      case BCLR: value &= ~(1 << bitnum); break;
      case BSET: value |=   1 << bitnum;  break;
    }

    /* Update EA operand (if not BTST) */
    if (op != BTST) {
        FUNC3(state, opcode, size, value);
    }

    /* Return cycle count; note that the times for BCHG.L, BCLR.L, and
     * BSET.L are maximums (though how they vary is undocumented) */
    return (op==BTST ? 4 : 8) + cycles;
}