
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int Q68State ;


 int EA_POSTINCREMENT ;
 int INSN_GET_REG ;
 int INSN_GET_REG0 ;
 int INSN_GET_SIZE ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_SETCC_CMP_B (int ) ;
 int JIT_EMIT_SETCC_CMP_L (int ) ;
 int JIT_EMIT_SETCC_CMP_W (int ) ;
 int JIT_EMIT_SUB_B (int ) ;
 int JIT_EMIT_SUB_L (int ) ;
 int JIT_EMIT_SUB_W (int ) ;
 scalar_t__ SIZE_B ;
 scalar_t__ SIZE_L ;
 scalar_t__ SIZE_W ;
 int cc_needed (int *,int ) ;
 int current_entry ;
 int ea_get (int *,int const,scalar_t__,int ,int*,int) ;
 int reg ;
 int reg0 ;
 scalar_t__ size ;

__attribute__((used)) static int opCMPM(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_SIZE;
    INSN_GET_REG0;

    const uint16_t src_ea = EA_POSTINCREMENT<<3 | reg0;
    const uint16_t dest_ea = EA_POSTINCREMENT<<3 | reg;
    int dummy;
    ea_get(state, src_ea, size, 0, &dummy, 1);
    ea_get(state, dest_ea, size, 0, &dummy, 2);

    const int do_cc = cc_needed(state, opcode);
    if (size == SIZE_B) {
        JIT_EMIT_SUB_B(current_entry);
        if (do_cc) JIT_EMIT_SETCC_CMP_B(current_entry);
    } else if (size == SIZE_W) {
        JIT_EMIT_SUB_W(current_entry);
        if (do_cc) JIT_EMIT_SETCC_CMP_W(current_entry);
    } else {
        JIT_EMIT_SUB_L(current_entry);
        if (do_cc) JIT_EMIT_SETCC_CMP_L(current_entry);
    }

    JIT_EMIT_ADD_CYCLES(current_entry, SIZE_L ? 20 : 12);
    return 0;
}
