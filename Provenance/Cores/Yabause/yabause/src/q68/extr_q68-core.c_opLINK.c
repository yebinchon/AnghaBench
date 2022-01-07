
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_5__ {int* A; int fault_addr; int fault_status; int exception; } ;
typedef TYPE_1__ Q68State ;


 int EX_ADDRESS_ERROR ;
 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_WRITE ;
 scalar_t__ IFETCH (TYPE_1__*) ;
 int INSN_GET_REG0 ;
 int PUSH32 (TYPE_1__*,int) ;
 size_t reg0 ;

__attribute__((used)) static int opLINK(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG0;
    int16_t disp = IFETCH(state);

    if (state->A[7] & 1) {
        state->exception = EX_ADDRESS_ERROR;
        state->fault_addr = state->A[7];
        state->fault_status = FAULT_STATUS_IN_DATA
                            | FAULT_STATUS_RW_WRITE;
        return 0;
    }

    PUSH32(state, state->A[reg0]);
    state->A[reg0] = state->A[7];
    state->A[7] += disp;
    return 16;
}
