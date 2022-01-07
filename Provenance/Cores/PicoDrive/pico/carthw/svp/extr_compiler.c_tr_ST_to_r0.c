
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_AND_IMM (int ,int ,int ,int) ;
 int EOP_MOV_REG_LSR (int ,int,int) ;
 int* hostreg_r ;

__attribute__((used)) static void tr_ST_to_r0(int op)
{

 EOP_MOV_REG_LSR(0, 6, 4);
 EOP_AND_IMM(0, 0, 0, 0x67);
 hostreg_r[0] = -1;
}
