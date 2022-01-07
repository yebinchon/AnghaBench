
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int* A; int fault_addr; int fault_status; int ea_addr; int exception; } ;
typedef TYPE_1__ Q68State ;


 int ACCESS_READ ;
 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_DATA_REG ;
 scalar_t__ EA_MISC ;
 scalar_t__ EA_MISC_IMMEDIATE ;
 scalar_t__ EA_MODE (int ) ;
 scalar_t__ EA_POSTINCREMENT ;
 scalar_t__ EA_PREDECREMENT ;
 scalar_t__ EA_REG (int ) ;
 int EX_ADDRESS_ERROR ;
 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_WRITE ;
 int PUSH32 (TYPE_1__*,int ) ;
 int SIZE_W ;
 int ea_resolve (TYPE_1__*,int ,int ,int ) ;
 int opSWAP (TYPE_1__*,int ) ;
 int op_ill (TYPE_1__*,int ) ;

__attribute__((used)) static int op_PEA(Q68State *state, uint32_t opcode)
{

    if (EA_MODE(opcode) == EA_DATA_REG) {
        return opSWAP(state, opcode);
    }

    if (EA_MODE(opcode) == EA_DATA_REG
     || EA_MODE(opcode) == EA_ADDRESS_REG
     || EA_MODE(opcode) == EA_POSTINCREMENT
     || EA_MODE(opcode) == EA_PREDECREMENT
     || (EA_MODE(opcode) == EA_MISC && EA_REG(opcode) == EA_MISC_IMMEDIATE)
    ) {
        return op_ill(state, opcode);
    }

    int cycles = ea_resolve(state, opcode, SIZE_W, ACCESS_READ);
    if (cycles < 0) {
        return op_ill(state, opcode);
    }
    if (cycles % 4 == 2) {
        cycles += 2;
    }

    if (state->A[7] & 1) {
        state->exception = EX_ADDRESS_ERROR;
        state->fault_addr = state->A[7];
        state->fault_status = FAULT_STATUS_IN_DATA
                            | FAULT_STATUS_RW_WRITE;
        return 0;
    }

    PUSH32(state, state->ea_addr);
    return 8 + cycles;
}
