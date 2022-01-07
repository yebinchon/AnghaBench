
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_9__ {int ea_addr; int fault_addr; int fault_status; int* A; int * DA; int exception; } ;
typedef TYPE_1__ Q68State ;


 int ACCESS_WRITE ;
 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_DATA_REG ;
 int EA_INDIRECT ;
 scalar_t__ EA_MODE (int) ;
 scalar_t__ EA_POSTINCREMENT ;
 scalar_t__ EA_PREDECREMENT ;
 size_t EA_REG (int) ;
 int EX_ADDRESS_ERROR ;
 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_WRITE ;
 unsigned int IFETCH (TYPE_1__*) ;
 int SIZE_L ;
 int SIZE_W ;
 int WRITE16 (TYPE_1__*,int,int ) ;
 int WRITE32 (TYPE_1__*,int,int ) ;
 int ea_resolve (TYPE_1__*,int,int,int ) ;
 int op_EXT (TYPE_1__*,int) ;
 int op_ill (TYPE_1__*,int) ;

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

    if (state->ea_addr & 1) {
        state->exception = EX_ADDRESS_ERROR;
        state->fault_addr = state->ea_addr;
        state->fault_status = FAULT_STATUS_IN_DATA
                            | FAULT_STATUS_RW_WRITE;
        return 0;
    }


    if (EA_MODE(opcode) == EA_PREDECREMENT) {

        int reg;
        for (reg = 15; reg >= 0; reg--, regmask >>= 1) {
            if (regmask & 1) {
                if (size == SIZE_W) {
                    state->ea_addr -= 2;
                    WRITE16(state, state->ea_addr, state->DA[reg]);
                    cycles += 4;
                } else {
                    state->ea_addr -= 4;
                    WRITE32(state, state->ea_addr, state->DA[reg]);
                    cycles += 8;
                }
            }
        }
        state->A[EA_REG(opcode)] = state->ea_addr;
    } else {
        int reg;
        for (reg = 0; reg < 16; reg++, regmask >>= 1) {
            if (regmask & 1) {
                if (size == SIZE_W) {
                    WRITE16(state, state->ea_addr, state->DA[reg]);
                    state->ea_addr += 2;
                    cycles += 4;
                } else {
                    WRITE32(state, state->ea_addr, state->DA[reg]);
                    state->ea_addr += 4;
                    cycles += 8;
                }
            }
        }
    }

    return 4 + cycles;
}
