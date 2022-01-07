
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_DATA_REG ;
 scalar_t__ EA_MODE (int) ;
 unsigned int IFETCH (int *) ;
 int INSN_GET_REG ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_BCHG (int ) ;
 int JIT_EMIT_BCLR (int ) ;
 int JIT_EMIT_BSET (int ) ;
 int JIT_EMIT_BTST_B (int ) ;
 int JIT_EMIT_BTST_L (int ) ;
 int JIT_EMIT_GET_OP1_IMMEDIATE (int ,unsigned int) ;
 int JIT_EMIT_GET_OP1_REGISTER (int ,int) ;
 int SIZE_B ;
 int SIZE_L ;
 int current_entry ;
 int ea_get (int *,int,int,int,int*,int) ;
 int ea_set (int *,int,int) ;
 int opMOVP (int *,int) ;
 int op_ill (int *,int) ;
 int reg ;

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


    if (opcode & 0x0100) {

        INSN_GET_REG;
        JIT_EMIT_GET_OP1_REGISTER(current_entry, reg*4);
        cycles = 0;
    } else {
        unsigned int bitnum = IFETCH(state);
        JIT_EMIT_GET_OP1_IMMEDIATE(current_entry, bitnum);
        cycles = 4;
    }


    int size = (EA_MODE(opcode)==EA_DATA_REG ? SIZE_L : SIZE_B);
    int cycles_tmp;
    ea_get(state, opcode, size, 1, &cycles_tmp, 2);
    if (cycles_tmp < 0) {
        return 1;
    }
    cycles += cycles_tmp;
    if (size == SIZE_L && (op == BCLR || op == BTST)) {
        cycles += 2;
    }




    if (size == SIZE_B) {
        JIT_EMIT_BTST_B(current_entry);
    } else {
        JIT_EMIT_BTST_L(current_entry);
    }
    switch (op) {
      default: break;
      case BCHG: JIT_EMIT_BCHG(current_entry); break;
      case BCLR: JIT_EMIT_BCLR(current_entry); break;
      case BSET: JIT_EMIT_BSET(current_entry); break;
    }


    if (op != BTST) {
        ea_set(state, opcode, size);
    }



    JIT_EMIT_ADD_CYCLES(current_entry, (op==BTST ? 4 : 8) + cycles);

    return 0;
}
