
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_ADD_IMM (int,int,int,int) ;
 int EOP_ADD_REG_LSR (int,int,int,int) ;
 int EOP_LDRH_SIMPLE (int ,int) ;
 int EOP_SUB_IMM (int,int,int,int) ;
 int* hostreg_r ;

__attribute__((used)) static void tr_STACK_to_r0(int op)
{

 EOP_SUB_IMM(6, 6, 8/2, 0x20);
 EOP_ADD_IMM(1, 7, 24/2, 0x04);
 EOP_ADD_IMM(1, 1, 0, 0x48);
 EOP_ADD_REG_LSR(1, 1, 6, 28);
 EOP_LDRH_SIMPLE(0, 1);
 hostreg_r[0] = hostreg_r[1] = -1;
}
