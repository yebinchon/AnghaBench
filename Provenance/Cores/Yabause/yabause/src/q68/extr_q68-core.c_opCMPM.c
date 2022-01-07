
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int SR; } ;
typedef TYPE_1__ Q68State ;


 int EA_POSTINCREMENT ;
 int INSN_CLEAR_XCC () ;
 int INSN_GET_REG ;
 int INSN_GET_REG0 ;
 int INSN_GET_SIZE ;
 int INSN_SETNZ_SHIFT (int const) ;
 scalar_t__ SIZE_L ;
 int SIZE_TO_BYTES (scalar_t__) ;
 int SR_C ;
 int SR_V ;
 int ea_get (TYPE_1__*,int const,scalar_t__,int ,int*) ;
 int reg ;
 int reg0 ;
 scalar_t__ size ;

__attribute__((used)) static int opCMPM(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_SIZE;
    INSN_GET_REG0;
    const int bytes = SIZE_TO_BYTES(size);
    const int shift = bytes*8 - 1;
    const uint32_t valuemask = ~(~1 << shift);

    const uint16_t src_ea = EA_POSTINCREMENT<<3 | reg0;
    const uint16_t dest_ea = EA_POSTINCREMENT<<3 | reg;
    int dummy;
    uint32_t src = ea_get(state, src_ea, size, 0, &dummy);
    uint32_t dest = ea_get(state, dest_ea, size, 0, &dummy);

    uint32_t result = (dest - src) & valuemask;
    INSN_CLEAR_XCC();
    INSN_SETNZ_SHIFT(result);
    if (((src ^ dest) & (result ^ dest)) >> shift) {
        state->SR |= SR_V;
    }
    if ((int)((src >> shift) - (dest >> shift) + (result >> shift)) > 0) {
        state->SR |= SR_C;
    }

    return size==SIZE_L ? 20 : 12;
}
