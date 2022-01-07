
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_MOV_REG_LSR (int,int,int) ;
 int EOP_MOV_REG_ROR (int,int,int) ;
 int EOP_ORR_REG_LSL (int,int,int ,int) ;
 int KRREG_P ;
 int SSP_Y ;
 int TR_WRITE_R0_TO_REG (int ) ;
 int dirty_regb ;

__attribute__((used)) static void tr_r0_to_Y(int const_val)
{
 EOP_MOV_REG_LSR(4, 4, 16);
 EOP_ORR_REG_LSL(4, 4, 0, 16);
 EOP_MOV_REG_ROR(4, 4, 16);
 dirty_regb |= KRREG_P;
 TR_WRITE_R0_TO_REG(SSP_Y);
}
