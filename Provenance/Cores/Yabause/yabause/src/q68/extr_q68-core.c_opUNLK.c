
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int* A; int fault_addr; int fault_status; int exception; } ;
typedef TYPE_1__ Q68State ;


 int EX_ADDRESS_ERROR ;
 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_READ ;
 int INSN_GET_REG0 ;
 int READU32 (TYPE_1__*,int) ;
 size_t reg0 ;

__attribute__((used)) static int opUNLK(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG0;




    state->A[7] = state->A[reg0];

    if (state->A[7] & 1) {
        state->exception = EX_ADDRESS_ERROR;
        state->fault_addr = state->A[7];
        state->fault_status = FAULT_STATUS_IN_DATA
                            | FAULT_STATUS_RW_READ;
        return 0;
    }

    state->A[reg0] = READU32(state, state->A[7]);
    state->A[7] += 4;
    return 12;
}
