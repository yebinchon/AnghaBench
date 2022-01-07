
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int16_t ;
typedef int Q68State ;


 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_WRITE ;
 int IFETCH (int *) ;
 int INSN_GET_REG0 ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_ADD_L (int ) ;
 int JIT_EMIT_CHECK_ALIGNED_SP (int ,int ,int) ;
 int JIT_EMIT_GET_OP1_REGISTER (int ,int) ;
 int JIT_EMIT_GET_OP2_IMMEDIATE (int ,int ) ;
 int JIT_EMIT_MOVE_L (int ) ;
 int JIT_EMIT_PUSH_L (int ) ;
 int JIT_EMIT_SET_REGISTER_L (int ,int) ;
 int current_entry ;
 int reg0 ;

__attribute__((used)) static int opLINK(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG0;
    int16_t disp = IFETCH(state);

    JIT_EMIT_CHECK_ALIGNED_SP(current_entry, opcode,
                              FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_WRITE);

    JIT_EMIT_GET_OP1_REGISTER(current_entry, (8+reg0)*4);
    JIT_EMIT_PUSH_L(current_entry);
    JIT_EMIT_GET_OP1_REGISTER(current_entry, (8+7)*4);
    JIT_EMIT_MOVE_L(current_entry);
    JIT_EMIT_SET_REGISTER_L(current_entry, (8+reg0)*4);
    JIT_EMIT_GET_OP2_IMMEDIATE(current_entry, disp);
    JIT_EMIT_ADD_L(current_entry);
    JIT_EMIT_SET_REGISTER_L(current_entry, (8+7)*4);
    JIT_EMIT_ADD_CYCLES(current_entry, 16);
    return 0;
}
