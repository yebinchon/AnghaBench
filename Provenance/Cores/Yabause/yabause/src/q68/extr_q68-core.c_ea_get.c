
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {int ea_addr; int fault_addr; int fault_status; void* exception; int * A; int * D; } ;
typedef TYPE_1__ Q68State ;


 int ACCESS_MODIFY ;
 int ACCESS_READ ;


 int EA_MODE (int ) ;
 unsigned int EA_REG (int ) ;
 void* EX_ADDRESS_ERROR ;
 void* EX_ILLEGAL_INSTRUCTION ;
 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_READ ;
 int READU16 (TYPE_1__*,int) ;
 int READU32 (TYPE_1__*,int) ;
 int READU8 (TYPE_1__*,int) ;
 int SIZE_B ;
 int SIZE_W ;
 int ea_resolve (TYPE_1__*,int ,int,int ) ;

__attribute__((used)) static uint32_t ea_get(Q68State *state, uint32_t opcode, int size,
                       int is_rmw, int *cycles_ret)
{
    const unsigned int reg = EA_REG(opcode);
    switch (EA_MODE(opcode)) {
      case 128:
        *cycles_ret = 0;
        return size==SIZE_B ? (uint8_t) state->D[reg] :
               size==SIZE_W ? (uint16_t)state->D[reg] : state->D[reg];
      case 129:
        if (size == SIZE_B) {

            state->exception = EX_ILLEGAL_INSTRUCTION;
            *cycles_ret = -1;
            return 0;
        } else {
            *cycles_ret = 0;
            return size==SIZE_W ? (uint16_t)state->A[reg] : state->A[reg];
        }
      default: {
        *cycles_ret = ea_resolve(state, opcode, size,
                                 is_rmw ? ACCESS_MODIFY : ACCESS_READ);
        if (*cycles_ret < 0) {
            state->exception = EX_ILLEGAL_INSTRUCTION;
            return 0;
        }
        if (size == SIZE_B) {
            return READU8(state, state->ea_addr);
        } else {

            if (state->ea_addr & 1) {
                state->exception = EX_ADDRESS_ERROR;
                state->fault_addr = state->ea_addr;
                state->fault_status = FAULT_STATUS_IN_DATA
                                    | FAULT_STATUS_RW_READ;
                *cycles_ret = -1;
                return 0;
            }

            return size==SIZE_W ? READU16(state, state->ea_addr)
                                : READU32(state, state->ea_addr);
        }
      }
    }
}
