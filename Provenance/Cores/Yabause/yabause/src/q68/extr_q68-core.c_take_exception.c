
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_7__ {int SR; int USP; int* A; int SSP; int PC; int fault_opcode; int fault_addr; int fault_status; void* halted; int * jit_running; } ;
typedef TYPE_1__ Q68State ;
 int PUSH16 (TYPE_1__*,int) ;
 int PUSH32 (TYPE_1__*,int) ;
 void* Q68_HALTED_DOUBLE_FAULT ;
 int READU32 (TYPE_1__*,int const) ;
 int SR_S ;
 int SR_SET_I (TYPE_1__*,int const) ;

__attribute__((used)) static int take_exception(Q68State *state, uint8_t num)
{
    static const int exception_cycles[256] = {
        [145 ] = 50,
        [146 ] = 50,
        [142 ] = 34,
        [143 ] = 42,
        [144 ] = 44,
        [128 ] = 34,
        [132 ] = 34,
        [130 ] = 34,
        [134 ] = 34,
        [133 ] = 34,
        [131 ] = 44,
        [141 ] = 44,
        [140 ] = 44,
        [139 ] = 44,
        [138 ] = 44,
        [137 ] = 44,
        [136 ] = 44,
        [135 ] = 44,
        [129 + 0 ] = 38,
        [129 + 1 ] = 38,
        [129 + 2 ] = 38,
        [129 + 3 ] = 38,
        [129 + 4 ] = 38,
        [129 + 5 ] = 38,
        [129 + 6 ] = 38,
        [129 + 7 ] = 38,
        [129 + 8 ] = 38,
        [129 + 9 ] = 38,
        [129 +10 ] = 38,
        [129 +11 ] = 38,
        [129 +12 ] = 38,
        [129 +13 ] = 38,
        [129 +14 ] = 38,
        [129 +15 ] = 38,
    };


    state->jit_running = ((void*)0);

    if (!(state->SR & SR_S)) {
        state->USP = state->A[7];
        state->A[7] = state->SSP;
    }

    if (state->A[7] & 1) {
        state->halted = Q68_HALTED_DOUBLE_FAULT;
        return 0;
    }

    PUSH32(state, state->PC);
    PUSH16(state, state->SR);
    if (num == 145 || num == 146) {
        PUSH16(state, state->fault_opcode);
        PUSH32(state, state->fault_addr);
        PUSH16(state, state->fault_status);
    }
    state->SR |= SR_S;
    if (num >= 141 && num <= 135) {
        SR_SET_I(state, (num - 141) + 1);
    }
    state->PC = READU32(state, num*4);

    if (state->PC & 1) {


        state->halted = Q68_HALTED_DOUBLE_FAULT;
        return 0;
    }

    return exception_cycles[num];
}
