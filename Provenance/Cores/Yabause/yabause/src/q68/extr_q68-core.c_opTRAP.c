
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ exception; } ;
typedef TYPE_1__ Q68State ;


 scalar_t__ EX_TRAP ;

__attribute__((used)) static int opTRAP(Q68State *state, uint32_t opcode)
{
    state->exception = EX_TRAP + (opcode & 0x000F);
    return 0;
}
