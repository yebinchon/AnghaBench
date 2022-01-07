
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int16_t ;
typedef int Q68State ;


 int IFETCH (int *) ;
 int INSN_GET_REG ;
 int INSN_GET_REG0 ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_MOVEP_READ_L (int ,int,int ,int) ;
 int JIT_EMIT_MOVEP_READ_W (int ,int,int ,int) ;
 int JIT_EMIT_MOVEP_WRITE_L (int ,int,int ,int) ;
 int JIT_EMIT_MOVEP_WRITE_W (int ,int,int ,int) ;
 int current_entry ;
 int reg ;
 int reg0 ;

__attribute__((used)) static int opMOVP(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_REG0;
    int to_memory = opcode & 0x0080;
    int is_long = opcode & 0x0040;
    int16_t disp = IFETCH(state);

    if (to_memory) {
        if (is_long) {
            JIT_EMIT_MOVEP_WRITE_L(current_entry, reg0*4, disp, reg*4);
        } else {
            JIT_EMIT_MOVEP_WRITE_W(current_entry, reg0*4, disp, reg*4);
        }
    } else {
        if (is_long) {
            JIT_EMIT_MOVEP_READ_L(current_entry, reg0*4, disp, reg*4);
        } else {
            JIT_EMIT_MOVEP_READ_W(current_entry, reg0*4, disp, reg*4);
        }
    }

    JIT_EMIT_ADD_CYCLES(current_entry, is_long ? 24 : 16);
    return 0;
}
