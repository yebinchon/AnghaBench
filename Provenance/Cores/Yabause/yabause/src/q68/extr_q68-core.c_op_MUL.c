
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef unsigned int const uint16_t ;
typedef int int16_t ;
struct TYPE_4__ {int* D; } ;
typedef TYPE_1__ Q68State ;


 int INSN_CLEAR_CC () ;
 int INSN_GET_REG ;
 int INSN_SETNZ (unsigned int) ;
 int SIZE_W ;
 unsigned int ea_get (TYPE_1__*,int,int ,int ,int*) ;
 size_t reg ;

__attribute__((used)) static int op_MUL(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    const int sign = opcode & (1<<8);

    int cycles;
    const uint16_t data = ea_get(state, opcode, SIZE_W, 0, &cycles);
    if (cycles < 0) {
        return 0;
    }

    if (sign) {
        state->D[reg] = (int16_t)state->D[reg] * (int16_t)data;
    } else {
        state->D[reg] = (uint16_t)state->D[reg] * data;
    }
    INSN_CLEAR_CC();
    INSN_SETNZ(state->D[reg]);
    return 54 + cycles;

}
