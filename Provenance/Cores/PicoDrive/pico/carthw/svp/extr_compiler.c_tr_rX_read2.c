
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* r; } ;


 int EOP_ADD_IMM (int ,int ,int ,int) ;
 int EOP_ADD_REG_LSL (int,int,int,int) ;
 int EOP_ADD_REG_LSR (int,int,int,int) ;
 int EOP_AND_IMM (int,int,int,int) ;
 int EOP_LDRH_SIMPLE (int ,int) ;
 int EOP_LDR_IMM (int,int,int) ;
 int EOP_ORR_IMM (int,int,int,int) ;
 int EOP_STRH_SIMPLE (int ,int) ;
 int* hostreg_r ;
 int known_regb ;
 TYPE_1__ known_regs ;
 int tr_bank_read (int) ;
 int tr_bank_write (int) ;

__attribute__((used)) static void tr_rX_read2(int op)
{
 int r = (op&3) | ((op>>6)&4);

 if ((r&3) == 3) {
  tr_bank_read((op&0x100) | ((op>>2)&3));
 } else if (known_regb & (1 << (r+8))) {
  tr_bank_read((op&0x100) | known_regs.r[r]);
 } else {
  int reg = (r < 4) ? 8 : 9;
  int ror = ((4 - (r&3))*8) & 0x1f;
  EOP_AND_IMM(1,reg,ror/2,0xff);
  if (r >= 4)
   EOP_ORR_IMM(1,1,((ror-8)&0x1f)/2,1);
  if (r&3) EOP_ADD_REG_LSR(1,7,1, (r&3)*8-1);
  else EOP_ADD_REG_LSL(1,7,1,1);
  EOP_LDRH_SIMPLE(0,1);
 }
 EOP_LDR_IMM(2,7,0x48c);
 EOP_ADD_REG_LSL(2,2,0,1);
 EOP_ADD_IMM(0,0,0,1);
 if ((r&3) == 3) {
  tr_bank_write((op&0x100) | ((op>>2)&3));
 } else if (known_regb & (1 << (r+8))) {
  tr_bank_write((op&0x100) | known_regs.r[r]);
 } else {
  EOP_STRH_SIMPLE(0,1);
  hostreg_r[1] = -1;
 }
 EOP_LDRH_SIMPLE(0,2);
 hostreg_r[0] = hostreg_r[2] = -1;
}
