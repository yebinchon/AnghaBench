
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int Q68State ;


 int ACCESS_WRITE ;
 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_DATA_REG ;
 int EA_INDIRECT ;
 scalar_t__ EA_MODE (int) ;
 scalar_t__ EA_POSTINCREMENT ;
 scalar_t__ EA_PREDECREMENT ;
 int EA_REG (int) ;
 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_WRITE ;
 unsigned int IFETCH (int *) ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_CHECK_ALIGNED_EA (int ,int,int) ;
 int JIT_EMIT_MOVEM_WRITEBACK (int ,int) ;
 int JIT_EMIT_STORE_DEC_L (int ,int) ;
 int JIT_EMIT_STORE_DEC_W (int ,int) ;
 int JIT_EMIT_STORE_INC_L (int ,int) ;
 int JIT_EMIT_STORE_INC_W (int ,int) ;
 int SIZE_L ;
 int SIZE_W ;
 int current_entry ;
 int ea_resolve (int *,int,int,int ) ;
 int op_EXT (int *,int) ;
 int op_ill (int *,int) ;

__attribute__((used)) static int op_STM(Q68State *state, uint32_t opcode)
{

    if (EA_MODE(opcode) == EA_DATA_REG) {
        return op_EXT(state, opcode);
    }

    unsigned int regmask = IFETCH(state);
    int size = (opcode & 0x0040) ? SIZE_L : SIZE_W;
    if (EA_MODE(opcode) <= EA_ADDRESS_REG
     || EA_MODE(opcode) == EA_POSTINCREMENT
    ) {
        return op_ill(state, opcode);
    }


    uint16_t safe_ea;
    if (EA_MODE(opcode) == EA_PREDECREMENT) {
        safe_ea = EA_INDIRECT<<3 | EA_REG(opcode);
    } else {
        safe_ea = opcode;
    }
    int cycles = ea_resolve(state, safe_ea, SIZE_W, ACCESS_WRITE);
    if (cycles < 0) {
        return op_ill(state, opcode);
    }
    if (regmask != 0) {

        JIT_EMIT_CHECK_ALIGNED_EA(current_entry, opcode,
                                  FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_WRITE);

    }

    if (EA_MODE(opcode) == EA_PREDECREMENT) {

        int reg;
        for (reg = 15; reg >= 0; reg--, regmask >>= 1) {
            if (regmask & 1) {
                if (size == SIZE_W) {
                    JIT_EMIT_STORE_DEC_W(current_entry, reg*4);
                    cycles += 4;
                } else {
                    JIT_EMIT_STORE_DEC_L(current_entry, reg*4);
                    cycles += 8;
                }
            }
        }
        JIT_EMIT_MOVEM_WRITEBACK(current_entry, (8 + EA_REG(opcode)) * 4);
    } else {
        int reg;
        for (reg = 0; reg < 16; reg++, regmask >>= 1) {
            if (regmask & 1) {
                if (size == SIZE_W) {
                    JIT_EMIT_STORE_INC_W(current_entry, reg*4);
                    cycles += 4;
                } else {
                    JIT_EMIT_STORE_INC_L(current_entry, reg*4);
                    cycles += 8;
                }
            }
        }
    }

    JIT_EMIT_ADD_CYCLES(current_entry, 4 + cycles);
    return 0;
}
