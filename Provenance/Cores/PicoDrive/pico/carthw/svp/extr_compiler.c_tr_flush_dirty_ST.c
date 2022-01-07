
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_BIC_IMM (int,int,int ,int) ;
 int EOP_MRS (int) ;
 int EOP_ORR_REG_LSR (int,int,int,int) ;
 int KRREG_ST ;
 int dirty_regb ;
 int* hostreg_r ;

__attribute__((used)) static void tr_flush_dirty_ST(void)
{
 if (!(dirty_regb & KRREG_ST)) return;
 EOP_BIC_IMM(6,6,0,0x0f);
 EOP_MRS(1);
 EOP_ORR_REG_LSR(6,6,1,28);
 dirty_regb &= ~KRREG_ST;
 hostreg_r[1] = -1;
}
