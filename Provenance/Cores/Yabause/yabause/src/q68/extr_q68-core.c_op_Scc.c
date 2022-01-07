
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 int ACCESS_MODIFY ;
 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_DATA_REG ;
 scalar_t__ EA_MODE (int ) ;
 int INSN_COND_TRUE (int ) ;
 int INSN_GET_COND ;
 int SIZE_B ;
 int cond ;
 int ea_resolve (int *,int ,int ,int ) ;
 int ea_set (int *,int ,int ,int) ;
 int opDBcc (int *,int ) ;
 int op_ill (int *,int ) ;

__attribute__((used)) static int op_Scc(Q68State *state, uint32_t opcode)
{
    if (EA_MODE(opcode) == EA_ADDRESS_REG) {

        return opDBcc(state, opcode);
    }

    INSN_GET_COND;
    const int is_true = INSN_COND_TRUE(cond);


    int cycles;
    if (EA_MODE(opcode) == EA_DATA_REG) {
        cycles = 0;
    } else {
        cycles = ea_resolve(state, opcode, SIZE_B, ACCESS_MODIFY);
        if (cycles < 0) {
            return op_ill(state, opcode);
        }
    }
    ea_set(state, opcode, SIZE_B, is_true ? 0xFF : 0x00);
    if (EA_MODE(opcode) == EA_DATA_REG) {

        return is_true ? 6 : 4;
    } else {
        return 8 + cycles;
    }
}
