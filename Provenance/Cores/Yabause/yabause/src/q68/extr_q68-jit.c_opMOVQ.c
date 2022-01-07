
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 int INSN_GET_IMM8 ;
 int INSN_GET_REG ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_GET_OP1_IMMEDIATE (int ,int ) ;
 int JIT_EMIT_MOVE_L (int ) ;
 int JIT_EMIT_SETCC_LOGIC_L (int ) ;
 int JIT_EMIT_SET_REGISTER_L (int ,int) ;
 int cc_needed (int *,int ) ;
 int current_entry ;
 int imm8 ;
 int reg ;

__attribute__((used)) static int opMOVQ(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_IMM8;
    JIT_EMIT_GET_OP1_IMMEDIATE(current_entry, imm8);
    const int do_cc = cc_needed(state, opcode);
    JIT_EMIT_MOVE_L(current_entry);
    if (do_cc) JIT_EMIT_SETCC_LOGIC_L(current_entry);
    JIT_EMIT_SET_REGISTER_L(current_entry, reg*4);
    JIT_EMIT_ADD_CYCLES(current_entry, 4);
    return 0;
}
