
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 int INSN_GET_REG0 ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_CHECK_SUPER (int ) ;
 int JIT_EMIT_MOVE_FROM_USP (int ,int) ;
 int JIT_EMIT_MOVE_TO_USP (int ,int) ;
 int current_entry ;
 int reg0 ;

__attribute__((used)) static int opMUSP(Q68State *state, uint32_t opcode)
{
    JIT_EMIT_CHECK_SUPER(current_entry);
    INSN_GET_REG0;
    if (opcode & 0x0008) {
        JIT_EMIT_MOVE_TO_USP(current_entry, reg0*4);
    } else {
        JIT_EMIT_MOVE_FROM_USP(current_entry, reg0*4);
    }
    JIT_EMIT_ADD_CYCLES(current_entry, 4);
    return 0;
}
