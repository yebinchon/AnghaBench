
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int Q68State ;


 int EA_DATA_REG ;
 int EA_PREDECREMENT ;
 int INSN_GET_REG ;
 int INSN_GET_REG0 ;
 int JIT_EMIT_ABCD (int ) ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_SBCD (int ) ;
 int SIZE_B ;
 int current_entry ;
 int ea_get (int *,int const,int ,int,int*,int) ;
 int ea_set (int *,int const,int ) ;
 int reg ;
 int reg0 ;

__attribute__((used)) static int op_BCD(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_REG0;
    const int is_add = opcode & 0x4000;
    const int is_memory = opcode & 0x0008;

    const uint16_t src_ea =
        (is_memory ? EA_PREDECREMENT : EA_DATA_REG) << 3 | reg0;
    const uint16_t dest_ea =
        (is_memory ? EA_PREDECREMENT : EA_DATA_REG) << 3 | reg;
    int dummy;
    ea_get(state, src_ea, SIZE_B, 0, &dummy, 1);
    ea_get(state, dest_ea, SIZE_B, 1, &dummy, 2);

    if (is_add) {
        JIT_EMIT_ABCD(current_entry);
    } else {
        JIT_EMIT_SBCD(current_entry);
    }

    ea_set(state, dest_ea, SIZE_B);
    JIT_EMIT_ADD_CYCLES(current_entry, is_memory ? 18 : 6);
    return 0;
}
