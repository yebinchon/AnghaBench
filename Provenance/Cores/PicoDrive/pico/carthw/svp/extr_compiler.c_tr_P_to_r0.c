
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_MOV_REG_LSR (int ,int,int) ;
 int* hostreg_r ;
 int tr_flush_dirty_P () ;

__attribute__((used)) static void tr_P_to_r0(int op)
{
 tr_flush_dirty_P();
 EOP_MOV_REG_LSR(0, 10, 16);
 hostreg_r[0] = -1;
}
