
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emith_move_r_imm (int,int) ;
 int* hostreg_r ;

__attribute__((used)) static void tr_mov16(int r, int val)
{
 if (hostreg_r[r] != val) {
  emith_move_r_imm(r, val);
  hostreg_r[r] = val;
 }
}
