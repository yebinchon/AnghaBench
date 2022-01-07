
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int exception; } ;
typedef TYPE_1__ Q68State ;


 int EX_ILLEGAL_INSTRUCTION ;

__attribute__((used)) static inline int op_ill(Q68State *state, uint32_t opcode)
{
    state->exception = EX_ILLEGAL_INSTRUCTION;
    return 0;
}
