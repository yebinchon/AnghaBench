
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_DATA_REG ;
 scalar_t__ EA_MODE (int ) ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_TAS (int ) ;
 int SIZE_B ;
 int current_entry ;
 int ea_get (int *,int ,int ,int,int*,int) ;
 int ea_set (int *,int ,int ) ;
 int op_ill (int *,int ) ;

__attribute__((used)) static int op_TAS(Q68State *state, uint32_t opcode)
{
    if (EA_MODE(opcode) == EA_ADDRESS_REG) {
        return op_ill(state, opcode);
    }

    int cycles;
    ea_get(state, opcode, SIZE_B, 1, &cycles, 1);
    if (cycles < 0) {


        return 1;
    }
    JIT_EMIT_TAS(current_entry);
    ea_set(state, opcode, SIZE_B);
    JIT_EMIT_ADD_CYCLES(current_entry,
                        (EA_MODE(opcode) == EA_DATA_REG ? 4 : 10) + cycles);
    return 0;
}
