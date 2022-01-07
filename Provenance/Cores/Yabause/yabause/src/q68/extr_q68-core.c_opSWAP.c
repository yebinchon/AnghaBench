
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int* D; } ;
typedef TYPE_1__ Q68State ;


 int INSN_CLEAR_CC () ;
 int INSN_GET_REG0 ;
 int INSN_SETNZ (int) ;
 size_t reg0 ;

__attribute__((used)) static int opSWAP(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG0;
    state->D[reg0] = state->D[reg0]>>16 | state->D[reg0]<<16;
    INSN_CLEAR_CC();
    INSN_SETNZ(state->D[reg0]);
    return 4;
}
