
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 int ACCESS_READ ;
 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_DATA_REG ;
 scalar_t__ EA_MISC ;
 scalar_t__ EA_MISC_IMMEDIATE ;
 scalar_t__ EA_MODE (int ) ;
 scalar_t__ EA_POSTINCREMENT ;
 scalar_t__ EA_PREDECREMENT ;
 scalar_t__ EA_REG (int ) ;
 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_WRITE ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_CHECK_ALIGNED_SP (int ,int ,int) ;
 int JIT_EMIT_PEA (int ) ;
 int SIZE_W ;
 int current_entry ;
 int ea_resolve (int *,int ,int ,int ) ;
 int opSWAP (int *,int ) ;
 int op_ill (int *,int ) ;

__attribute__((used)) static int op_PEA(Q68State *state, uint32_t opcode)
{

    if (EA_MODE(opcode) == EA_DATA_REG) {
        return opSWAP(state, opcode);
    }

    if (EA_MODE(opcode) == EA_DATA_REG
     || EA_MODE(opcode) == EA_ADDRESS_REG
     || EA_MODE(opcode) == EA_POSTINCREMENT
     || EA_MODE(opcode) == EA_PREDECREMENT
     || (EA_MODE(opcode) == EA_MISC && EA_REG(opcode) == EA_MISC_IMMEDIATE)
    ) {
        return op_ill(state, opcode);
    }

    int cycles = ea_resolve(state, opcode, SIZE_W, ACCESS_READ);
    if (cycles < 0) {
        return op_ill(state, opcode);
    }
    if (cycles % 4 == 2) {
        cycles += 2;
    }


    JIT_EMIT_CHECK_ALIGNED_SP(current_entry, opcode,
                              FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_WRITE);

    JIT_EMIT_PEA(current_entry);
    JIT_EMIT_ADD_CYCLES(current_entry, 8 + cycles);
    return 0;
}
