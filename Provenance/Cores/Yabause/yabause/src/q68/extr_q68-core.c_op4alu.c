
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int SR; } ;
typedef TYPE_1__ Q68State ;


 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_DATA_REG ;
 scalar_t__ EA_MODE (int) ;
 int INSN_CLEAR_CC () ;
 int INSN_GET_SIZE ;
 int INSN_SETNZ_SHIFT (int) ;
 scalar_t__ SIZE_L ;
 int SIZE_TO_BYTES (scalar_t__) ;
 int SR_C ;
 int SR_N ;
 int SR_V ;
 int SR_X ;
 int SR_X_SHIFT ;
 int SR_Z ;
 int ea_get (TYPE_1__*,int,scalar_t__,int,int*) ;
 int ea_set (TYPE_1__*,int,scalar_t__,int) ;
 int op_ill (TYPE_1__*,int) ;
 scalar_t__ size ;

__attribute__((used)) static int op4alu(Q68State *state, uint32_t opcode)
{
    INSN_GET_SIZE;
    const int bytes = SIZE_TO_BYTES(size);
    const int shift = bytes*8 - 1;
    const uint32_t valuemask = ~(~1 << shift);
    enum {NEGX = 0, CLR = 1, NEG = 2, NOT = 3, TST = 5} aluop;
    aluop = opcode>>9 & 7;

    if (EA_MODE(opcode) == EA_ADDRESS_REG) {
        return op_ill(state, opcode);
    }


    int cycles;
    uint32_t value = ea_get(state, opcode, size, 1, &cycles);
    if (cycles < 0) {
        return 0;
    }
    if (aluop != TST) {
        if (EA_MODE(opcode) == EA_DATA_REG) {
            if (size == SIZE_L) {
                cycles += 2;
            }
        } else {
            cycles += (size == SIZE_L) ? 8 : 4;
        }
    }


    uint32_t result;
    if (aluop == NEGX) {
        state->SR &= ~(SR_N | SR_V | SR_C);
    } else {
        INSN_CLEAR_CC();
    }
    switch (aluop) {
        case NEGX: { int X = (state->SR >> SR_X_SHIFT) & 1;
                     result = (0 - value - X) & valuemask;
                     if (result != 0) {
                         state->SR &= ~SR_Z;
                     }
                     goto NEG_common;
                   }
        case NEG: result = (0 - value) & valuemask;
                   if (result == 0) {
                       state->SR |= SR_Z;
                   } else {
                       state->SR &= ~SR_Z;
                   }
                 NEG_common:
                   if (result >> shift) {
                       state->SR |= SR_N;
                   }
                   if ((value & result) >> shift) {
                       state->SR |= SR_V;
                   }
                   if ((value | result) != 0) {
                       state->SR |= SR_X | SR_C;
                   } else {
                       state->SR &= ~SR_X;
                   }
                   break;
        case CLR: result = 0;
                   state->SR |= SR_Z;
                   break;
        case NOT: result = ~value & valuemask;
                   INSN_SETNZ_SHIFT(result);
                   break;
        default:
                   result = value;
                   INSN_SETNZ_SHIFT(value);
                   break;
    }


    if (aluop != TST) {
        ea_set(state, opcode, size, result);
    }

    return 4 + cycles;
}
