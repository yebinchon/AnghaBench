
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int8_t ;
typedef int Q68State ;


 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_DATA_REG ;
 scalar_t__ EA_MODE (int ) ;
 int INSN_CLEAR_CC () ;
 int INSN_SETNZ (int) ;
 int SIZE_B ;
 int ea_get (int *,int ,int ,int,int*) ;
 int ea_set (int *,int ,int ,int) ;
 int op_ill (int *,int ) ;

__attribute__((used)) static int op_TAS(Q68State *state, uint32_t opcode)
{
    if (EA_MODE(opcode) == EA_ADDRESS_REG) {
        return op_ill(state, opcode);
    }

    int cycles;
    int8_t value = ea_get(state, opcode, SIZE_B, 1, &cycles);
    if (cycles < 0) {


        return 0;
    }

    INSN_CLEAR_CC();
    INSN_SETNZ(value);
    ea_set(state, opcode, SIZE_B, value | 0x80);
    return (EA_MODE(opcode) == EA_DATA_REG ? 4 : 10) + cycles;
}
