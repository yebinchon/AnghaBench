
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* r; } ;


 int EOP_BIC_IMM (int,int,int,int) ;
 int EOP_ORR_IMM (int,int,int,scalar_t__) ;
 int dirty_regb ;
 int emith_move_r_imm (int,int) ;
 TYPE_1__ known_regs ;

__attribute__((used)) static void tr_flush_dirty_prs(void)
{
 int i, ror = 0, reg;
 int dirty = dirty_regb >> 8;
 if ((dirty&7) == 7) {
  emith_move_r_imm(8, known_regs.r[0]|(known_regs.r[1]<<8)|(known_regs.r[2]<<16));
  dirty &= ~7;
 }
 if ((dirty&0x70) == 0x70) {
  emith_move_r_imm(9, known_regs.r[4]|(known_regs.r[5]<<8)|(known_regs.r[6]<<16));
  dirty &= ~0x70;
 }

 for (i = 0; dirty && i < 8; i++, dirty >>= 1)
 {
  if (!(dirty&1)) continue;
  switch (i&3) {
   case 0: ror = 0; break;
   case 1: ror = 24/2; break;
   case 2: ror = 16/2; break;
  }
  reg = (i < 4) ? 8 : 9;
  EOP_BIC_IMM(reg,reg,ror,0xff);
  if (known_regs.r[i] != 0)
   EOP_ORR_IMM(reg,reg,ror,known_regs.r[i]);
 }
 dirty_regb &= ~0xff00;
}
