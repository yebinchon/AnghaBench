
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 int ACCESS_MODIFY ;
 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_DATA_REG ;
 scalar_t__ EA_MODE (int ) ;
 int INSN_GET_COND ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_ADD_CYCLES_Scc_Dn (int ) ;
 int JIT_EMIT_Scc (int ) ;
 int JIT_EMIT_TEST_cc (int ,int ) ;
 int SIZE_B ;
 int cond ;
 int current_entry ;
 int ea_resolve (int *,int ,int ,int ) ;
 int ea_set (int *,int ,int ) ;
 int opDBcc (int *,int ) ;
 int op_ill (int *,int ) ;

__attribute__((used)) static int op_Scc(Q68State *state, uint32_t opcode)
{
    if (EA_MODE(opcode) == EA_ADDRESS_REG) {

        return opDBcc(state, opcode);
    }

    INSN_GET_COND;


    int cycles;
    if (EA_MODE(opcode) == EA_DATA_REG) {
        cycles = 0;
    } else {
        cycles = ea_resolve(state, opcode, SIZE_B, ACCESS_MODIFY);
        if (cycles < 0) {
            return op_ill(state, opcode);
        }
    }
    JIT_EMIT_TEST_cc(cond, current_entry);
    JIT_EMIT_Scc(current_entry);
    if (EA_MODE(opcode) == EA_DATA_REG) {

        JIT_EMIT_ADD_CYCLES_Scc_Dn(current_entry);
    } else {
        JIT_EMIT_ADD_CYCLES(current_entry, 8 + cycles);
    }
    ea_set(state, opcode, SIZE_B);
    return 0;
}
