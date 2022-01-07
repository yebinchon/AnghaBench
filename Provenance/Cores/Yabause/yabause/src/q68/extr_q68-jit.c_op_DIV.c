
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 int INSN_GET_REG ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_DIVS_W (int ) ;
 int JIT_EMIT_DIVU_W (int ) ;
 int JIT_EMIT_GET_OP2_REGISTER (int ,int) ;
 int JIT_EMIT_SET_REGISTER_L (int ,int) ;
 int SIZE_W ;
 int current_entry ;
 int ea_get (int *,int,int ,int ,int*,int) ;
 int reg ;

__attribute__((used)) static int op_DIV(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    const int sign = opcode & (1<<8);

    int cycles;
    ea_get(state, opcode, SIZE_W, 0, &cycles, 1);
    if (cycles < 0) {
        return 1;
    }
    JIT_EMIT_GET_OP2_REGISTER(current_entry, reg*4);

    JIT_EMIT_ADD_CYCLES(current_entry, cycles);

    if (sign) {
        JIT_EMIT_DIVS_W(current_entry);
    } else {
        JIT_EMIT_DIVU_W(current_entry);
    }
    JIT_EMIT_SET_REGISTER_L(current_entry, reg*4);



    JIT_EMIT_ADD_CYCLES(current_entry, sign ? 158 : 140);
    return 0;
}
