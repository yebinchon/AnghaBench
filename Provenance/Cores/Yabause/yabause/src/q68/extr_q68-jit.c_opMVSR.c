
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_DATA_REG ;
 scalar_t__ EA_MODE (int) ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_CHECK_SUPER (int ) ;
 int JIT_EMIT_GET_OP1_CCR (int ) ;
 int JIT_EMIT_GET_OP1_SR (int ) ;
 int JIT_EMIT_MOVE_W (int ) ;
 int JIT_EMIT_SET_CCR (int ) ;
 int JIT_EMIT_SET_SR (int ) ;
 int SIZE_W ;
 int advance_PC (int *) ;
 int current_entry ;
 int ea_get (int *,int,int ,int,int*,int) ;
 int ea_set (int *,int,int ) ;
 int op_ill (int *,int) ;

__attribute__((used)) static int opMVSR(Q68State *state, uint32_t opcode)
{
    int is_CCR;
    int ea_dest;
    int cycles;
    switch (opcode>>9 & 3) {
      case 0:
        is_CCR = 0;
        ea_dest = 1;
        cycles = (EA_MODE(opcode) == EA_DATA_REG) ? 6 : 8;
        break;
      case 1:
        return op_ill(state, opcode);
      case 2:
        is_CCR = 1;
        ea_dest = 0;
        cycles = 12;
        break;
      default:
        JIT_EMIT_CHECK_SUPER(current_entry);
        is_CCR = 0;
        ea_dest = 0;
        cycles = 12;
        break;
    }

    if (EA_MODE(opcode) == EA_ADDRESS_REG) {
        return op_ill(state, opcode);
    }




    int cycles_tmp;
    ea_get(state, opcode, SIZE_W, ea_dest, &cycles_tmp, 1);
    if (cycles_tmp < 0) {
        return 1;
    }
    cycles += cycles_tmp;



    JIT_EMIT_ADD_CYCLES(current_entry, cycles);
    advance_PC(state);

    if (ea_dest) {
        if (is_CCR) {
            JIT_EMIT_GET_OP1_CCR(current_entry);
        } else {
            JIT_EMIT_GET_OP1_SR(current_entry);
        }
        JIT_EMIT_MOVE_W(current_entry);
        ea_set(state, opcode, SIZE_W);
    } else {
        JIT_EMIT_MOVE_W(current_entry);

        if (is_CCR) {
            JIT_EMIT_SET_CCR(current_entry);
        } else {
            JIT_EMIT_SET_SR(current_entry);
        }
    }

    return 0;
}
