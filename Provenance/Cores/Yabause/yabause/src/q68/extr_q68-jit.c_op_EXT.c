
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 int INSN_GET_REG0 ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_EXT_L (int ) ;
 int JIT_EMIT_EXT_W (int ) ;
 int JIT_EMIT_GET_OP1_REGISTER (int ,int) ;
 int JIT_EMIT_SETCC_LOGIC_L (int ) ;
 int JIT_EMIT_SETCC_LOGIC_W (int ) ;
 int JIT_EMIT_SET_REGISTER_L (int ,int) ;
 int JIT_EMIT_SET_REGISTER_W (int ,int) ;
 int cc_needed (int *,int) ;
 int current_entry ;
 int reg0 ;

__attribute__((used)) static int op_EXT(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG0;
    JIT_EMIT_GET_OP1_REGISTER(current_entry, reg0*4);
    const int do_cc = cc_needed(state, opcode);
    if (opcode & 0x0040) {
        JIT_EMIT_EXT_L(current_entry);
        if (do_cc) JIT_EMIT_SETCC_LOGIC_L(current_entry);
        JIT_EMIT_SET_REGISTER_L(current_entry, reg0*4);
    } else {
        JIT_EMIT_EXT_W(current_entry);
        if (do_cc) JIT_EMIT_SETCC_LOGIC_W(current_entry);
        JIT_EMIT_SET_REGISTER_W(current_entry, reg0*4);
    }
    JIT_EMIT_ADD_CYCLES(current_entry, 4);
    return 0;
}
