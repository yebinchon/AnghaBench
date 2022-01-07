
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int Q68State ;


 int ACCESS_MODIFY ;
 int ACCESS_READ ;



 int EA_MISC_IMMEDIATE ;
 int EA_MODE (int) ;
 int EA_REG (int) ;
 int EX_ILLEGAL_INSTRUCTION ;
 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_READ ;
 int IFETCH (int *) ;
 int JIT_EMIT_CHECK_ALIGNED_EA (int ,int,int) ;
 int JIT_EMIT_GET_OP1_EA_B (int ) ;
 int JIT_EMIT_GET_OP1_EA_L (int ) ;
 int JIT_EMIT_GET_OP1_EA_W (int ) ;
 int JIT_EMIT_GET_OP1_IMMEDIATE (int ,int) ;
 int JIT_EMIT_GET_OP1_REGISTER (int ,int) ;
 int JIT_EMIT_GET_OP2_EA_B (int ) ;
 int JIT_EMIT_GET_OP2_EA_L (int ) ;
 int JIT_EMIT_GET_OP2_EA_W (int ) ;
 int JIT_EMIT_GET_OP2_REGISTER (int ,int) ;
 int SIZE_B ;
 int SIZE_L ;
 int SIZE_W ;
 int current_entry ;
 int ea_resolve (int *,int,int,int ) ;
 int raise_exception (int *,int ) ;

__attribute__((used)) static void ea_get(Q68State *state, uint32_t opcode, int size,
                   int is_rmw, int *cycles_ret, int op_num)
{
    switch (EA_MODE(opcode)) {

      case 129:
        *cycles_ret = 0;
        if (op_num == 1) {
            JIT_EMIT_GET_OP1_REGISTER(current_entry, EA_REG(opcode) * 4);
        } else {
            JIT_EMIT_GET_OP2_REGISTER(current_entry, EA_REG(opcode) * 4);
        }
        break;

      case 130:
        *cycles_ret = 0;
        if (size == SIZE_B) {

            raise_exception(state, EX_ILLEGAL_INSTRUCTION);
            *cycles_ret = -1;
            return;
        } else {
            if (op_num == 1) {
                JIT_EMIT_GET_OP1_REGISTER(current_entry,
                                          (8 + EA_REG(opcode)) * 4);
            } else {
                JIT_EMIT_GET_OP2_REGISTER(current_entry,
                                          (8 + EA_REG(opcode)) * 4);
            }
        }
        break;

      case 128:
        if (EA_REG(opcode) == EA_MISC_IMMEDIATE) {
            if (is_rmw) {
                raise_exception(state, EX_ILLEGAL_INSTRUCTION);
                *cycles_ret = -1;
                return;
            } else {
                *cycles_ret = (size==SIZE_L ? 8 : 4);
                uint32_t val;
                val = IFETCH(state);
                if (size == SIZE_B) {
                    val &= 0xFF;
                } else if (size == SIZE_L) {
                    val <<= 16;
                    val |= (uint16_t)IFETCH(state);
                }
                if (op_num == 1) {
                    JIT_EMIT_GET_OP1_IMMEDIATE(current_entry, val);
                } else {
                    JIT_EMIT_GET_OP1_IMMEDIATE(current_entry, val);
                }
            }
            break;
        }


      default:
        *cycles_ret = ea_resolve(state, opcode, size,
                                 is_rmw ? ACCESS_MODIFY : ACCESS_READ);
        if (*cycles_ret < 0) {
            raise_exception(state, EX_ILLEGAL_INSTRUCTION);
            return;
        }
        if (size == SIZE_B) {
            if (op_num == 1) {
                JIT_EMIT_GET_OP1_EA_B(current_entry);
            } else {
                JIT_EMIT_GET_OP2_EA_B(current_entry);
            }
        } else if (size == SIZE_W) {

            JIT_EMIT_CHECK_ALIGNED_EA(
                current_entry, opcode,
                FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_READ
            );

            if (op_num == 1) {
                JIT_EMIT_GET_OP1_EA_W(current_entry);
            } else {
                JIT_EMIT_GET_OP2_EA_W(current_entry);
            }
        } else {

            JIT_EMIT_CHECK_ALIGNED_EA(
                current_entry, opcode,
                FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_READ
            );

            if (op_num == 1) {
                JIT_EMIT_GET_OP1_EA_L(current_entry);
            } else {
                JIT_EMIT_GET_OP2_EA_L(current_entry);
            }
        }
        break;

    }
}
