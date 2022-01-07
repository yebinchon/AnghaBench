
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
 int INSN_GET_SIZE ;
 int JIT_EMIT_ADDX_B (int ) ;
 int JIT_EMIT_ADDX_L (int ) ;
 int JIT_EMIT_ADDX_W (int ) ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_SETCC_ADDX_B (int ) ;
 int JIT_EMIT_SETCC_ADDX_L (int ) ;
 int JIT_EMIT_SETCC_ADDX_W (int ) ;
 int JIT_EMIT_SETCC_SUBX_B (int ) ;
 int JIT_EMIT_SETCC_SUBX_L (int ) ;
 int JIT_EMIT_SETCC_SUBX_W (int ) ;
 int JIT_EMIT_SUBX_B (int ) ;
 int JIT_EMIT_SUBX_L (int ) ;
 int JIT_EMIT_SUBX_W (int ) ;
 scalar_t__ SIZE_B ;
 scalar_t__ SIZE_L ;
 scalar_t__ SIZE_W ;
 int cc_needed (int *,int) ;
 int current_entry ;
 int ea_get (int *,int const,scalar_t__,int,int*,int) ;
 int ea_set (int *,int const,scalar_t__) ;
 int reg ;
 int reg0 ;
 scalar_t__ size ;

__attribute__((used)) static int opADSX(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_SIZE;
    INSN_GET_REG0;
    const int is_add = opcode & 0x4000;
    const int is_memory = opcode & 0x0008;

    const uint16_t src_ea =
        (is_memory ? EA_PREDECREMENT : EA_DATA_REG) << 3 | reg0;
    const uint16_t dest_ea =
        (is_memory ? EA_PREDECREMENT : EA_DATA_REG) << 3 | reg;
    int dummy;
    ea_get(state, src_ea, size, 0, &dummy, 1);
    ea_get(state, dest_ea, size, 1, &dummy, 2);

    const int do_cc = cc_needed(state, opcode);
    if (is_add) {
        if (size == SIZE_B) {
            JIT_EMIT_ADDX_B(current_entry);
            if (do_cc) JIT_EMIT_SETCC_ADDX_B(current_entry);
        } else if (size == SIZE_W) {
            JIT_EMIT_ADDX_W(current_entry);
            if (do_cc) JIT_EMIT_SETCC_ADDX_W(current_entry);
        } else {
            JIT_EMIT_ADDX_L(current_entry);
            if (do_cc) JIT_EMIT_SETCC_ADDX_L(current_entry);
        }
    } else {
        if (size == SIZE_B) {
            JIT_EMIT_SUBX_B(current_entry);
            if (do_cc) JIT_EMIT_SETCC_SUBX_B(current_entry);
        } else if (size == SIZE_W) {
            JIT_EMIT_SUBX_W(current_entry);
            if (do_cc) JIT_EMIT_SETCC_SUBX_W(current_entry);
        } else {
            JIT_EMIT_SUBX_L(current_entry);
            if (do_cc) JIT_EMIT_SETCC_SUBX_L(current_entry);
        }
    }

    ea_set(state, dest_ea, size);
    JIT_EMIT_ADD_CYCLES(current_entry, (is_memory ? (size==SIZE_L ? 30 : 18)
                                                  : (size==SIZE_L ? 8 : 4)));
    return 0;
}
