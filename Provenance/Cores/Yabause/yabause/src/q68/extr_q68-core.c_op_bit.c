
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {unsigned int* D; int SR; } ;
typedef TYPE_1__ Q68State ;


 int EA_ADDRESS_REG ;

 int EA_MODE (int) ;
 unsigned int IFETCH (TYPE_1__*) ;
 int INSN_GET_REG ;
 int SIZE_B ;
 int SIZE_L ;
 int SR_Z ;
 int ea_get (TYPE_1__*,int,int,int,int*) ;
 int ea_set (TYPE_1__*,int,int,int) ;
 int opMOVP (TYPE_1__*,int) ;
 int op_ill (TYPE_1__*,int) ;
 size_t reg ;

__attribute__((used)) static int op_bit(Q68State *state, uint32_t opcode)
{

    if (EA_MODE(opcode) == EA_ADDRESS_REG) {
        if (opcode & 0x0100) {
            return opMOVP(state, opcode);
        } else {
            return op_ill(state, opcode);
        }
    }

    enum {BTST = 0, BCHG = 1, BCLR = 2, BSET = 3} op = opcode>>6 & 3;
    int cycles;


    unsigned int bitnum;
    if (opcode & 0x0100) {

        INSN_GET_REG;
        bitnum = state->D[reg];
        cycles = 0;
    } else {
        bitnum = IFETCH(state);
        cycles = 4;
    }


    int size;
    switch (EA_MODE(opcode)) {
      case 128:
        size = SIZE_L;
        bitnum %= 32;
        break;
      default:
        size = SIZE_B;
        bitnum %= 8;
        break;
    }
    int cycles_tmp;
    uint32_t value = ea_get(state, opcode, size, 1, &cycles_tmp);
    if (cycles_tmp < 0) {
        return 0;
    }
    cycles += cycles_tmp;
    if (size == SIZE_L && (op == BCLR || op == BTST)) {
        cycles += 2;
    }


    if ((value >> bitnum) & 1) {
        state->SR &= ~SR_Z;
    } else {
        state->SR |= SR_Z;
    }
    switch (op) {
      case BTST: break;
      case BCHG: value ^= 1 << bitnum; break;
      case BCLR: value &= ~(1 << bitnum); break;
      case BSET: value |= 1 << bitnum; break;
    }


    if (op != BTST) {
        ea_set(state, opcode, size, value);
    }



    return (op==BTST ? 4 : 8) + cycles;
}
