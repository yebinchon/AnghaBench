
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 int ACCESS_READ ;
 int EA_MODE (int) ;
 int EA_REG (int) ;
 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_WRITE ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_CHECK_ALIGNED_SP (int ,int,int) ;
 int JIT_EMIT_JMP (int ) ;
 int JIT_EMIT_JSR (int ,int ) ;
 int SIZE_W ;
 int advance_PC (int *) ;
 int current_entry ;
 int ea_resolve (int *,int,int ,int ) ;
 int jit_PC ;
 int op_ill (int *,int) ;

__attribute__((used)) static int opjump(Q68State *state, uint32_t opcode)
{
    int is_jsr = ~opcode & 0x0040;





    int cycles;
    switch (EA_MODE(opcode)) {
      case 133:
        cycles = 8;
        break;
      case 135:
        cycles = 10;
        break;
      case 134:
        cycles = 14;
        break;
      case 132:
        switch (EA_REG(opcode)) {
          case 130:
            cycles = 10;
            break;
          case 131:
            cycles = 12;
            break;
          case 129:
            cycles = 10;
            break;
          case 128:
            cycles = 14;
            break;
          default:
            return op_ill(state, opcode);
        }
        break;
      default:
        return op_ill(state, opcode);
    }
    if (is_jsr) {
        cycles += 8;
    }
    JIT_EMIT_ADD_CYCLES(current_entry, cycles);
    advance_PC(state);

    ea_resolve(state, opcode, SIZE_W, ACCESS_READ);
    if (is_jsr) {

        JIT_EMIT_CHECK_ALIGNED_SP(current_entry, opcode,
                                  FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_WRITE);

        JIT_EMIT_JSR(current_entry, jit_PC);
        return 0;
    } else {
        JIT_EMIT_JMP(current_entry);
        return 1;
    }
}
