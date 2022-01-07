
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_ADD_IMM (int,int,int,int) ;
 int EOP_STRH_IMM (int ,int,int) ;
 int* hostreg_r ;

__attribute__((used)) static void tr_bank_write(int addr)
{
 int breg = 7;
 if (addr > 0x7f) {
  if (hostreg_r[1] != (0x100000|((addr&0x180)<<1))) {
   EOP_ADD_IMM(1,7,30/2,(addr&0x180)>>1);
   hostreg_r[1] = 0x100000|((addr&0x180)<<1);
  }
  breg = 1;
 }
 EOP_STRH_IMM(0,breg,(addr&0x7f)<<1);
}
