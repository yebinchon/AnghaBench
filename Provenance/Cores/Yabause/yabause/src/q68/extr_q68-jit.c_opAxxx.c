
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 int EX_LINE_1010 ;
 int raise_exception (int *,int ) ;

__attribute__((used)) static int opAxxx(Q68State *state, uint32_t opcode)
{
    return raise_exception(state, EX_LINE_1010);
}
