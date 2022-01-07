
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;




 int EA_MODE (int ) ;
 int EA_REG (int ) ;
 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_WRITE ;
 int JIT_EMIT_CHECK_ALIGNED_EA (int ,int ,int) ;
 int JIT_EMIT_SET_AREG_W (int ,int) ;
 int JIT_EMIT_SET_EA_B (int ) ;
 int JIT_EMIT_SET_EA_L (int ) ;
 int JIT_EMIT_SET_EA_W (int ) ;
 int JIT_EMIT_SET_REGISTER_B (int ,int) ;
 int JIT_EMIT_SET_REGISTER_L (int ,int) ;
 int JIT_EMIT_SET_REGISTER_W (int ,int) ;
 int SIZE_B ;
 int SIZE_W ;
 int current_entry ;

__attribute__((used)) static void ea_set(Q68State *state, uint32_t opcode, int size)
{
    switch (EA_MODE(opcode)) {
      case 128:
        if (size == SIZE_B) {
            JIT_EMIT_SET_REGISTER_B(current_entry, EA_REG(opcode) * 4);
        } else if (size == SIZE_W) {
            JIT_EMIT_SET_REGISTER_W(current_entry, EA_REG(opcode) * 4);
        } else {
            JIT_EMIT_SET_REGISTER_L(current_entry, EA_REG(opcode) * 4);
        }
        return;
      case 129:
        if (size == SIZE_W) {
            JIT_EMIT_SET_AREG_W(current_entry, (8 + EA_REG(opcode)) * 4);
        } else {
            JIT_EMIT_SET_REGISTER_L(current_entry, (8 + EA_REG(opcode)) * 4);
        }
        return;
      default: {
        if (size == SIZE_B) {
            JIT_EMIT_SET_EA_B(current_entry);
        } else if (size == SIZE_W) {

            JIT_EMIT_CHECK_ALIGNED_EA(
                current_entry, opcode,
                FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_WRITE
            );

            JIT_EMIT_SET_EA_W(current_entry);
        } else {

            JIT_EMIT_CHECK_ALIGNED_EA(
                current_entry, opcode,
                FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_WRITE
            );

            JIT_EMIT_SET_EA_L(current_entry);
        }
        return;
      }
    }
}
