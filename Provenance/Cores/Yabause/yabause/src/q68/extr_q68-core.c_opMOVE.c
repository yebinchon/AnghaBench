
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;
typedef int Q68State ;


 int ACCESS_WRITE ;
 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_MODE (int const) ;
 int INSN_CLEAR_CC () ;
 int INSN_SETNZ (int ) ;
 int const SIZE_B ;
 int const SIZE_L ;
 int const SIZE_W ;
 int ea_get (int *,int,int const,int ,int*) ;
 int ea_resolve (int *,int const,int const,int ) ;
 int ea_set (int *,int const,int const,int const) ;
 int op_ill (int *,int) ;

__attribute__((used)) static int opMOVE(Q68State *state, uint32_t opcode)
{
    const int size = (opcode>>12==1 ? SIZE_B : opcode>>12==2 ? SIZE_L : SIZE_W);

    int cycles_src;
    const uint32_t data = ea_get(state, opcode, size, 0, &cycles_src);
    if (cycles_src < 0) {
        return 0;
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


    if (EA_MODE(dummy_opcode) != EA_ADDRESS_REG) {
        INSN_CLEAR_CC();
        INSN_SETNZ(size==SIZE_B ? (int8_t)data :
                   size==SIZE_W ? (int16_t)data : (int32_t)data);
    }


    ea_set(state, dummy_opcode, size, data);
    return 4 + cycles_src + cycles_dest;
}
