
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * D; } ;
typedef TYPE_1__ Q68State ;


 int INSN_CLEAR_CC () ;
 int INSN_GET_IMM8 ;
 int INSN_GET_REG ;
 int INSN_SETNZ (int ) ;
 int imm8 ;
 size_t reg ;

__attribute__((used)) static int opMOVQ(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_IMM8;
    state->D[reg] = imm8;
    INSN_CLEAR_CC();
    INSN_SETNZ(imm8);
    return 4;
}
