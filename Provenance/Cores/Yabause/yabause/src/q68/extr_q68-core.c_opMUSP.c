
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int SR; int USP; int * A; int exception; } ;
typedef TYPE_1__ Q68State ;


 int EX_PRIVILEGE_VIOLATION ;
 int INSN_GET_REG0 ;
 int SR_S ;
 size_t reg0 ;

__attribute__((used)) static int opMUSP(Q68State *state, uint32_t opcode)
{
    if (!(state->SR & SR_S)) {
        state->exception = EX_PRIVILEGE_VIOLATION;
        return 0;
    }

    INSN_GET_REG0;
    if (opcode & 0x0008) {
        state->USP = state->A[reg0];
    } else {
        state->A[reg0] = state->USP;
    }
    return 4;
}
