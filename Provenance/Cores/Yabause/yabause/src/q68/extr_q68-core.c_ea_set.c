
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint8_t ;
typedef void* uint32_t ;
typedef void* uint16_t ;
typedef void* int16_t ;
struct TYPE_6__ {int ea_addr; int fault_addr; int fault_status; int exception; void** A; void** D; } ;
typedef TYPE_1__ Q68State ;


 int BYTE_OFS ;


 int EA_MODE (void*) ;
 unsigned int EA_REG (void*) ;
 int EX_ADDRESS_ERROR ;
 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_WRITE ;


 int WORD_OFS ;
 int WRITE16 (TYPE_1__*,int,void*) ;
 int WRITE32 (TYPE_1__*,int,void*) ;
 int WRITE8 (TYPE_1__*,int,void*) ;

__attribute__((used)) static void ea_set(Q68State *state, uint32_t opcode, int size, uint32_t data)
{
    const unsigned int reg = EA_REG(opcode);
    switch (EA_MODE(opcode)) {
      case 130:
        switch (size) {
          case 129: *(BYTE_OFS + (uint8_t *)&state->D[reg]) = data; break;
          case 128: *(WORD_OFS + (uint16_t *)&state->D[reg]) = data; break;
          default: state->D[reg] = data; break;
        }
        return;
      case 131:
        if (size == 128) {
            state->A[reg] = (int16_t)data;
        } else {
            state->A[reg] = data;
        }
        return;
      default: {
        if (size == 129) {
            WRITE8(state, state->ea_addr, data);
        } else {

            if (state->ea_addr & 1) {
                state->exception = EX_ADDRESS_ERROR;
                state->fault_addr = state->ea_addr;
                state->fault_status = FAULT_STATUS_IN_DATA
                                    | FAULT_STATUS_RW_WRITE;
                return;
            } else

            if (size == 128) {
                WRITE16(state, state->ea_addr, data);
            } else {
                WRITE32(state, state->ea_addr, data);
            }
        }
        return;
      }
    }
}
