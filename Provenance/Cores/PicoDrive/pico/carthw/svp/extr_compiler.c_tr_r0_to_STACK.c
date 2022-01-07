
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_ADD_IMM (int,int,int,int) ;
 int EOP_ADD_REG_LSR (int,int,int,int) ;
 int EOP_STRH_SIMPLE (int ,int) ;
 int* hostreg_r ;

__attribute__((used)) static void tr_r0_to_STACK(int const_val)
{

 EOP_ADD_IMM(1, 7, 24/2, 0x04);
 EOP_ADD_IMM(1, 1, 0, 0x48);
 EOP_ADD_REG_LSR(1, 1, 6, 28);
 EOP_STRH_SIMPLE(0, 1);
 EOP_ADD_IMM(6, 6, 8/2, 0x20);
 hostreg_r[1] = -1;
}
