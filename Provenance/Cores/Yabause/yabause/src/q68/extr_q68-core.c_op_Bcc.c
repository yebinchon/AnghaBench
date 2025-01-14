
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_5__ {int* A; int fault_addr; int fault_status; scalar_t__ current_PC; scalar_t__ PC; int exception; } ;
typedef TYPE_1__ Q68State ;


 scalar_t__ COND_F ;
 int EX_ADDRESS_ERROR ;
 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_WRITE ;
 scalar_t__ IFETCH (TYPE_1__*) ;
 scalar_t__ INSN_COND_TRUE (scalar_t__) ;
 int INSN_GET_COND ;
 int INSN_GET_DISP8 ;
 int PUSH32 (TYPE_1__*,scalar_t__) ;
 scalar_t__ cond ;
 scalar_t__ disp ;

__attribute__((used)) static int op_Bcc(Q68State *state, uint32_t opcode)
{
    INSN_GET_COND;
    INSN_GET_DISP8;
    int cycles = 0;
    if (disp == 0) {
        disp = (int16_t)IFETCH(state);
        cycles = 4;
    }
    if (cond == COND_F) {


        if (state->A[7] & 1) {
            state->exception = EX_ADDRESS_ERROR;
            state->fault_addr = state->A[7];
            state->fault_status = FAULT_STATUS_IN_DATA
                                | FAULT_STATUS_RW_WRITE;
            return 0;
        }

        PUSH32(state, state->PC);
        state->PC = state->current_PC + disp;
        return 18;
    } else if (INSN_COND_TRUE(cond)) {
        state->PC = state->current_PC + disp;
        return 10;
    } else {
        return 8 + cycles;
    }
}
