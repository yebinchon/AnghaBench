
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_MOV_REG_ASR (int,int,int) ;
 int EOP_MOV_REG_LSL (int ,int,int) ;
 int EOP_MUL (int,int ,int) ;
 int KRREG_P ;
 int dirty_regb ;
 int* hostreg_r ;

__attribute__((used)) static void tr_flush_dirty_P(void)
{

 if (!(dirty_regb & KRREG_P)) return;
 EOP_MOV_REG_ASR(10, 4, 16);
 EOP_MOV_REG_LSL( 0, 4, 16);
 EOP_MOV_REG_ASR( 0, 0, 15);
 EOP_MUL(10, 0, 10);
 dirty_regb &= ~KRREG_P;
 hostreg_r[0] = -1;
}
