
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint16_t ;
typedef int Q68State ;


 int const READU16 (int *,int ) ;
 int cc_info (int const) ;
 int jit_PC ;

__attribute__((used)) static unsigned int cc_needed(Q68State *state, uint16_t opcode)
{
    const uint16_t next_opcode = READU16(state, jit_PC);
    const unsigned int this_output = cc_info(opcode) & 0x1F;
    const unsigned int next_input = (cc_info(next_opcode) >> 8) & 0x1F;
    const unsigned int next_output = cc_info(next_opcode) & 0x1F;






    return this_output & ~(~next_input & next_output);
}
