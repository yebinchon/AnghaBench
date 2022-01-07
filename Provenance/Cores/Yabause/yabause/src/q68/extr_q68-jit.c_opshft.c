
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_MODE (int) ;
 int INSN_GET_COUNT ;
 int INSN_GET_REG ;
 int INSN_GET_REG0 ;
 int INSN_GET_SIZE ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_ASL_B (int ) ;
 int JIT_EMIT_ASL_L (int ) ;
 int JIT_EMIT_ASL_W (int ) ;
 int JIT_EMIT_ASR_B (int ) ;
 int JIT_EMIT_ASR_L (int ) ;
 int JIT_EMIT_ASR_W (int ) ;
 int JIT_EMIT_GET_OP1_IMMEDIATE (int ,int) ;
 int JIT_EMIT_GET_OP1_REGISTER (int ,int) ;
 int JIT_EMIT_GET_OP2_REGISTER (int ,int) ;
 int JIT_EMIT_LSL_B (int ) ;
 int JIT_EMIT_LSL_L (int ) ;
 int JIT_EMIT_LSL_W (int ) ;
 int JIT_EMIT_LSR_B (int ) ;
 int JIT_EMIT_LSR_L (int ) ;
 int JIT_EMIT_LSR_W (int ) ;
 int JIT_EMIT_ROL_B (int ) ;
 int JIT_EMIT_ROL_L (int ) ;
 int JIT_EMIT_ROL_W (int ) ;
 int JIT_EMIT_ROR_B (int ) ;
 int JIT_EMIT_ROR_L (int ) ;
 int JIT_EMIT_ROR_W (int ) ;
 int JIT_EMIT_ROXL_B (int ) ;
 int JIT_EMIT_ROXL_L (int ) ;
 int JIT_EMIT_ROXL_W (int ) ;
 int JIT_EMIT_ROXR_B (int ) ;
 int JIT_EMIT_ROXR_L (int ) ;
 int JIT_EMIT_ROXR_W (int ) ;
 int JIT_EMIT_SET_REGISTER_B (int ,int) ;
 int JIT_EMIT_SET_REGISTER_L (int ,int) ;
 int JIT_EMIT_SET_REGISTER_W (int ,int) ;
 int SIZE_B ;
 int SIZE_L ;
 int SIZE_W ;
 int count ;
 int current_entry ;
 int ea_get (int *,int,int,int,int*,int) ;
 int ea_set (int *,int,int) ;
 int op_ill (int *,int) ;
 int reg ;
 int reg0 ;
 int size ;

__attribute__((used)) static int opshft(Q68State *state, uint32_t opcode)
{
    const int is_left = opcode & 0x0100;
    INSN_GET_SIZE;
    INSN_GET_COUNT;
    INSN_GET_REG0;
    int is_memory;
    int type;
    int cycles;

    if (size == 3) {

        is_memory = 1;
        if ((opcode & 0x0800) || EA_MODE(opcode) <= EA_ADDRESS_REG) {
            return op_ill(state, opcode);
        }
        size = SIZE_W;
        type = opcode>>9 & 3;
        JIT_EMIT_GET_OP1_IMMEDIATE(current_entry, 1);
        ea_get(state, opcode, size, 1, &cycles, 2);
        if (cycles < 0) {
            return 1;
        }
    } else {

        is_memory = 0;
        type = opcode>>3 & 3;
        if (opcode & 0x0020) {
            INSN_GET_REG;
            JIT_EMIT_GET_OP1_REGISTER(current_entry, reg*4);
        } else {
            JIT_EMIT_GET_OP1_IMMEDIATE(current_entry, count);
        }
        JIT_EMIT_GET_OP2_REGISTER(current_entry, reg0*4);
        cycles = 0;
    }

    switch (type) {
      case 0:
        if (is_left) {
            if (size == SIZE_B) {
                JIT_EMIT_ASL_B(current_entry);
            } else if (size == SIZE_W) {
                JIT_EMIT_ASL_W(current_entry);
            } else {
                JIT_EMIT_ASL_L(current_entry);
            }
        } else {
            if (size == SIZE_B) {
                JIT_EMIT_ASR_B(current_entry);
            } else if (size == SIZE_W) {
                JIT_EMIT_ASR_W(current_entry);
            } else {
                JIT_EMIT_ASR_L(current_entry);
            }
        }
        break;
      case 1:
        if (is_left) {
            if (size == SIZE_B) {
                JIT_EMIT_LSL_B(current_entry);
            } else if (size == SIZE_W) {
                JIT_EMIT_LSL_W(current_entry);
            } else {
                JIT_EMIT_LSL_L(current_entry);
            }
        } else {
            if (size == SIZE_B) {
                JIT_EMIT_LSR_B(current_entry);
            } else if (size == SIZE_W) {
                JIT_EMIT_LSR_W(current_entry);
            } else {
                JIT_EMIT_LSR_L(current_entry);
            }
        }
        break;
      case 2:
        if (is_left) {
            if (size == SIZE_B) {
                JIT_EMIT_ROXL_B(current_entry);
            } else if (size == SIZE_W) {
                JIT_EMIT_ROXL_W(current_entry);
            } else {
                JIT_EMIT_ROXL_L(current_entry);
            }
        } else {
            if (size == SIZE_B) {
                JIT_EMIT_ROXR_B(current_entry);
            } else if (size == SIZE_W) {
                JIT_EMIT_ROXR_W(current_entry);
            } else {
                JIT_EMIT_ROXR_L(current_entry);
            }
        }
        break;
      case 3:
        if (is_left) {
            if (size == SIZE_B) {
                JIT_EMIT_ROL_B(current_entry);
            } else if (size == SIZE_W) {
                JIT_EMIT_ROL_W(current_entry);
            } else {
                JIT_EMIT_ROL_L(current_entry);
            }
        } else {
            if (size == SIZE_B) {
                JIT_EMIT_ROR_B(current_entry);
            } else if (size == SIZE_W) {
                JIT_EMIT_ROR_W(current_entry);
            } else {
                JIT_EMIT_ROR_L(current_entry);
            }
        }
        break;
    }

    if (is_memory) {
        ea_set(state, opcode, size);
    } else if (size == SIZE_B) {
        JIT_EMIT_SET_REGISTER_B(current_entry, reg0*4);
    } else if (size == SIZE_W) {
        JIT_EMIT_SET_REGISTER_W(current_entry, reg0*4);
    } else {
        JIT_EMIT_SET_REGISTER_L(current_entry, reg0*4);
    }


    JIT_EMIT_ADD_CYCLES(current_entry, (size==SIZE_L ? 8 : 6) + cycles);
    return 0;
}
