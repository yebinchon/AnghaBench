
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* r; } ;


 int EOP_BIC_IMM (int,int,int,int) ;
 int EOP_ORR_IMM (int,int,int,scalar_t__) ;
 int dirty_regb ;
 TYPE_1__ known_regs ;

__attribute__((used)) static void tr_flush_dirty_pr(int r)
{
 int ror = 0, reg;

 if (!(dirty_regb & (1 << (r+8)))) return;

 switch (r&3) {
  case 0: ror = 0; break;
  case 1: ror = 24/2; break;
  case 2: ror = 16/2; break;
 }
 reg = (r < 4) ? 8 : 9;
 EOP_BIC_IMM(reg,reg,ror,0xff);
 if (known_regs.r[r] != 0)
  EOP_ORR_IMM(reg,reg,ror,known_regs.r[r]);
 dirty_regb &= ~(1 << (r+8));
}
