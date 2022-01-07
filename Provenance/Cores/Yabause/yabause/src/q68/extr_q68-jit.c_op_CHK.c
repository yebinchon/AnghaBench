
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_MODE (int ) ;
 int INSN_GET_REG ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_CHK_W (int ) ;
 int JIT_EMIT_GET_OP1_REGISTER (int ,int) ;
 int SIZE_W ;
 int current_entry ;
 int ea_get (int *,int ,int ,int ,int*,int) ;
 int op_ill (int *,int ) ;
 int reg ;

__attribute__((used)) static int op_CHK(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    JIT_EMIT_GET_OP1_REGISTER(current_entry, reg*4);

    int cycles;
    if (EA_MODE(opcode) == EA_ADDRESS_REG) {
        return op_ill(state, opcode);
    }
    ea_get(state, opcode, SIZE_W, 0, &cycles, 2);
    if (cycles < 0) {
        return 1;
    }

    JIT_EMIT_ADD_CYCLES(current_entry, 10 + cycles);


    JIT_EMIT_CHK_W(current_entry);
    return 0;
}
