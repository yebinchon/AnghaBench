
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 int INSN_GET_REG ;
 int INSN_GET_REG0 ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_EXG (int ,int,int) ;
 int current_entry ;
 int op_ill (int *,int) ;
 int reg ;
 int reg0 ;

__attribute__((used)) static int op_EXG(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_REG0;
    const int mode = opcode & 0xF8;

    if (mode == 0x40) {
        JIT_EMIT_EXG(current_entry, reg*4, reg0*4);
    } else if (mode == 0x48) {
        JIT_EMIT_EXG(current_entry, (8+reg)*4, (8+reg0)*4);
    } else if (mode == 0x88) {
        JIT_EMIT_EXG(current_entry, reg*4, (8+reg0)*4);
    } else {
        return op_ill(state, opcode);
    }
    JIT_EMIT_ADD_CYCLES(current_entry, 6);
    return 0;
}
