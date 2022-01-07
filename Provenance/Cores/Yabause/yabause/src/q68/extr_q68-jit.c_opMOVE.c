
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 int ACCESS_WRITE ;
 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_MODE (int const) ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_EXT_L (int ) ;
 int JIT_EMIT_MOVE_B (int ) ;
 int JIT_EMIT_MOVE_L (int ) ;
 int JIT_EMIT_MOVE_W (int ) ;
 int JIT_EMIT_SETCC_LOGIC_B (int ) ;
 int JIT_EMIT_SETCC_LOGIC_L (int ) ;
 int JIT_EMIT_SETCC_LOGIC_W (int ) ;
 int const SIZE_B ;
 int const SIZE_L ;
 int const SIZE_W ;
 int cc_needed (int *,int) ;
 int current_entry ;
 int ea_get (int *,int,int const,int ,int*,int) ;
 int ea_resolve (int *,int const,int const,int ) ;
 int ea_set (int *,int const,int const) ;
 int op_ill (int *,int) ;

__attribute__((used)) static int opMOVE(Q68State *state, uint32_t opcode)
{
    const int size = (opcode>>12==1 ? SIZE_B : opcode>>12==2 ? SIZE_L : SIZE_W);

    int cycles_src;
    ea_get(state, opcode, size, 0, &cycles_src, 1);
    if (cycles_src < 0) {
        return 1;
    }



    const uint32_t dummy_opcode = (opcode>>9 & 7) | (opcode>>3 & 0x38);
    int cycles_dest;
    if (EA_MODE(dummy_opcode) <= EA_ADDRESS_REG) {
        cycles_dest = 0;
    } else {
        cycles_dest = ea_resolve(state, dummy_opcode, size, ACCESS_WRITE);
        if (cycles_dest < 0) {
            return op_ill(state, opcode);
        }
    }


    const int do_cc = cc_needed(state, opcode);
    if (EA_MODE(dummy_opcode) == EA_ADDRESS_REG) {
        if (size == SIZE_W) {
            JIT_EMIT_EXT_L(current_entry);
        } else {
            JIT_EMIT_MOVE_L(current_entry);
        }
    } else {
        if (size == SIZE_B) {
            JIT_EMIT_MOVE_B(current_entry);
            if (do_cc) JIT_EMIT_SETCC_LOGIC_B(current_entry);
        } else if (size == SIZE_W) {
            JIT_EMIT_MOVE_W(current_entry);
            if (do_cc) JIT_EMIT_SETCC_LOGIC_W(current_entry);
        } else {
            JIT_EMIT_MOVE_L(current_entry);
            if (do_cc) JIT_EMIT_SETCC_LOGIC_L(current_entry);
        }
    }


    ea_set(state, dummy_opcode, size);
    JIT_EMIT_ADD_CYCLES(current_entry, 4 + cycles_src + cycles_dest);

    return 0;
}
