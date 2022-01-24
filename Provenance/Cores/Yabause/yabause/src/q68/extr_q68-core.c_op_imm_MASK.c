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
struct TYPE_9__ {int SR; int /*<<< orphan*/  exception; } ;
typedef  TYPE_1__ Q68State ;

/* Variables and functions */
 scalar_t__ EA_DATA_REG ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  EX_PRIVILEGE_VIOLATION ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  INSN_GET_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
#define  SIZE_B 129 
 int SIZE_L ; 
 int FUNC5 (int) ; 
#define  SIZE_W 128 
 int SR_C ; 
 int SR_S ; 
 int SR_V ; 
 int SR_X ; 
 int FUNC6 (TYPE_1__*,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int,int) ; 
 int FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int size ; 

__attribute__((used)) static int FUNC11(Q68State *state, uint32_t opcode)
{
    /* Check for bit-twiddling and illegal opcodes first */
    enum {OR = 0, AND, SUB, ADD, _BIT, EOR, CMP, _ILL} aluop;
    aluop = opcode>>9 & 7;
    if (aluop == _BIT) {
        return FUNC8(state, opcode);
    } else if (aluop == _ILL) {
        return FUNC9(state, opcode);
    }

    /* Get the instruction size */
    INSN_GET_SIZE;
    if (size == 3) {
        return FUNC9(state, opcode);
    }
    const int bytes = FUNC5(size);
    const int shift = bytes*8 - 1;
    const uint32_t valuemask = ~(~1 << shift);

    /* Fetch the immediate value */
    uint32_t imm = (uint16_t)FUNC1(state);
    if (size == SIZE_B) {
        imm &= 0xFF;
    } else if (size == SIZE_L) {
        imm = imm<<16 | (uint16_t)FUNC1(state);
    }

    /* Fetch the EA operand (which may be SR or CCR) */
    int use_SR;
    int cycles;
    uint32_t ea_val;
    if ((aluop==OR || aluop==AND || aluop==EOR) && (opcode & 0x3F) == 0x3C) {
        /* xxxI #imm,SR (or CCR) use the otherwise-invalid form of an
         * immediate value destination */
        if (size == SIZE_W && !(state->SR & SR_S)) {
            state->exception = EX_PRIVILEGE_VIOLATION;
            return 0;
        }
        use_SR = 1;
        cycles = 8;  // Total instruction time is 20 cycles
        switch (size) {
          case SIZE_B: ea_val = state->SR & 0xFF; break;
          case SIZE_W: ea_val = state->SR;        break;
          default:     return FUNC9(state, opcode);
        }
    } else {
        use_SR = 0;
        ea_val = FUNC6(state, opcode, size, 1, &cycles);
        if (cycles < 0) {
            return 0;
        }
    }

    /* Perform the operation */
    uint32_t result;
    if (aluop == ADD || aluop == SUB) {
        FUNC3();
    } else {
        FUNC2();
    }
    switch (aluop) {
        case OR:  result = ea_val | imm;
                  break;
        case AND: result = ea_val & imm;
                  break;
        case EOR: result = ea_val ^ imm;
                  break;
        case CMP: if (size == SIZE_L) {  // CMPI takes less time in most cases
                      if (FUNC0(opcode) != EA_DATA_REG) {
                          cycles -= 8;
                      } else {
                          cycles -= 2;
                      }
                  } else {
                      if (FUNC0(opcode) != EA_DATA_REG) {
                          cycles -= 4;
                      }
                  }
                  /* fall through to... */
        case SUB: { result = (ea_val - imm) & valuemask;
                    if (((imm ^ ea_val) & (result ^ ea_val)) >> shift) {
                        state->SR |= SR_V;
                    }
                    if ((int)((imm >> shift) - (ea_val >> shift)
                                             + (result >> shift)) > 0) {
                        state->SR |= SR_C;
                        if (aluop != CMP) {
                            state->SR |= SR_X;
                        }
                    }
                    break;
                  }
        default:  // case ADD
                  result = (ea_val + imm) & valuemask;
                  if (((ea_val ^ result) & (imm ^ result)) >> shift) {
                      state->SR |= SR_V;
                  }
                  if ((int)((ea_val >> shift) + (imm >> shift)
                                              - (result >> shift)) > 0) {
                      state->SR |= SR_X | SR_C;
                  }
                  break;
    }
    FUNC4(result);

    /* Update the EA operand (if not CMPI) */
    if (aluop != CMP) {
        if (use_SR) {
            if (size == SIZE_W) {
                FUNC10(state, result);
            } else {
                state->SR &= 0xFF00;
                state->SR |= result;
            }
        } else {
            FUNC7(state, opcode, size, result);
        }
    }

    /* All done */
    return (size==SIZE_L ? 16 : 8)
        + (FUNC0(opcode) == EA_DATA_REG ? 0 : 4) + cycles;
}