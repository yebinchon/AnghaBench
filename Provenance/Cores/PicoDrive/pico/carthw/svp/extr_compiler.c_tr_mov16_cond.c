
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_OP_MOV ;
 int emith_op_imm (int,int ,int ,int,int) ;
 int* hostreg_r ;

__attribute__((used)) static void tr_mov16_cond(int cond, int r, int val)
{
 emith_op_imm(cond, 0, A_OP_MOV, r, val);
 hostreg_r[r] = -1;
}
