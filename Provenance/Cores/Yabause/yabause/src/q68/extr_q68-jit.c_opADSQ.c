
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_INDIRECT ;
 scalar_t__ EA_MODE (int) ;
 int INSN_GET_COUNT ;
 int INSN_GET_SIZE ;
 int JIT_EMIT_ADD_B (int ) ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_ADD_L (int ) ;
 int JIT_EMIT_ADD_W (int ) ;
 int JIT_EMIT_GET_OP1_IMMEDIATE (int ,int ) ;
 int JIT_EMIT_SETCC_ADD_B (int ) ;
 int JIT_EMIT_SETCC_ADD_L (int ) ;
 int JIT_EMIT_SETCC_ADD_W (int ) ;
 int JIT_EMIT_SETCC_SUB_B (int ) ;
 int JIT_EMIT_SETCC_SUB_L (int ) ;
 int JIT_EMIT_SETCC_SUB_W (int ) ;
 int JIT_EMIT_SUB_B (int ) ;
 int JIT_EMIT_SUB_L (int ) ;
 int JIT_EMIT_SUB_W (int ) ;
 int SIZE_B ;
 int SIZE_L ;
 int SIZE_W ;
 int cc_needed (int *,int) ;
 int count ;
 int current_entry ;
 int ea_get (int *,int,int,int,int*,int) ;
 int ea_set (int *,int,int) ;
 int size ;

__attribute__((used)) static int opADSQ(Q68State *state, uint32_t opcode)
{
    const int is_sub = opcode & 0x0100;
    INSN_GET_COUNT;
    INSN_GET_SIZE;
    if (EA_MODE(opcode) == EA_ADDRESS_REG && size == 1) {
        size = 2;
    }

    JIT_EMIT_GET_OP1_IMMEDIATE(current_entry, count);

    int cycles;
    ea_get(state, opcode, size, 1, &cycles, 2);
    if (cycles < 0) {
        return 1;
    }

    const int do_cc = cc_needed(state, opcode);
    if (is_sub) {
        if (EA_MODE(opcode) == EA_ADDRESS_REG) {
            JIT_EMIT_SUB_L(current_entry);
        } else {
            if (size == SIZE_B) {
                JIT_EMIT_SUB_B(current_entry);
                if (do_cc) JIT_EMIT_SETCC_SUB_B(current_entry);
            } else if (size == SIZE_W) {
                JIT_EMIT_SUB_W(current_entry);
                if (do_cc) JIT_EMIT_SETCC_SUB_W(current_entry);
            } else {
                JIT_EMIT_SUB_L(current_entry);
                if (do_cc) JIT_EMIT_SETCC_SUB_L(current_entry);
            }
        }
    } else {
        if (EA_MODE(opcode) == EA_ADDRESS_REG) {
            JIT_EMIT_ADD_L(current_entry);
        } else {
            if (size == SIZE_B) {
                JIT_EMIT_ADD_B(current_entry);
                if (do_cc) JIT_EMIT_SETCC_ADD_B(current_entry);
            } else if (size == SIZE_W) {
                JIT_EMIT_ADD_W(current_entry);
                if (do_cc) JIT_EMIT_SETCC_ADD_W(current_entry);
            } else {
                JIT_EMIT_ADD_L(current_entry);
                if (do_cc) JIT_EMIT_SETCC_ADD_L(current_entry);
            }
        }
    }

    ea_set(state, opcode, size);

    cycles += (size==SIZE_L || EA_MODE(opcode) == EA_ADDRESS_REG ? 8 : 4);
    cycles += (EA_MODE(opcode) >= EA_INDIRECT ? 4 : 0);
    JIT_EMIT_ADD_CYCLES(current_entry, cycles);
    return 0;
}
