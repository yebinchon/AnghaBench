
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int* A; int fault_addr; int fault_status; int ea_addr; int PC; int exception; } ;
typedef TYPE_1__ Q68State ;


 int ACCESS_READ ;
 int EA_MODE (int) ;
 int EA_REG (int) ;
 int EX_ADDRESS_ERROR ;
 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_WRITE ;
 int PUSH32 (TYPE_1__*,int ) ;
 int SIZE_W ;
 int ea_resolve (TYPE_1__*,int,int ,int ) ;
 int op_ill (TYPE_1__*,int) ;

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

    ea_resolve(state, opcode, SIZE_W, ACCESS_READ);
    if (is_jsr) {

        if (state->A[7] & 1) {
            state->exception = EX_ADDRESS_ERROR;
            state->fault_addr = state->A[7];
            state->fault_status = FAULT_STATUS_IN_DATA
                                | FAULT_STATUS_RW_WRITE;
            return 0;
        }

        cycles += 8;
        PUSH32(state, state->PC);
    }
    state->PC = state->ea_addr;
    return cycles;
}
