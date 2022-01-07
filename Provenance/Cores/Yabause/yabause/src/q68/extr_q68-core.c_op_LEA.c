
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int ea_addr; int * A; } ;
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
 int INSN_GET_REG ;
 int SIZE_W ;
 int ea_resolve (TYPE_1__*,int ,int ,int ) ;
 int op_ill (TYPE_1__*,int ) ;
 size_t reg ;

__attribute__((used)) static int op_LEA(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;


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
    state->A[reg] = state->ea_addr;
    return cycles;
}
