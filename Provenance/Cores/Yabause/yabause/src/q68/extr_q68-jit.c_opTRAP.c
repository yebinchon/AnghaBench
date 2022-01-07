
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 scalar_t__ EX_TRAP ;
 int raise_exception (int *,scalar_t__) ;

__attribute__((used)) static int opTRAP(Q68State *state, uint32_t opcode)
{
    return raise_exception(state, EX_TRAP + (opcode & 0x000F));
}
