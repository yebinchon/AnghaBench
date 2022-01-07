
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_AND_IMM (int,int,int,int) ;
 int EOP_ORR_REG_LSL (int,int,int,int) ;
 int KRREG_ST ;
 int SSP_ST ;
 int TR_WRITE_R0_TO_REG (int ) ;
 int dirty_regb ;
 int* hostreg_r ;

__attribute__((used)) static void tr_r0_to_ST(int const_val)
{

 EOP_AND_IMM(1, 0, 0, 0x67);
 EOP_AND_IMM(6, 6, 8/2, 0xe0);
 EOP_ORR_REG_LSL(6, 6, 1, 4);
 TR_WRITE_R0_TO_REG(SSP_ST);
 hostreg_r[1] = -1;
 dirty_regb &= ~KRREG_ST;
}
