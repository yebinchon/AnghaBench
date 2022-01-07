
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* r; } ;


 int EOP_ADD_REG_LSL (int,int,int,int) ;
 int EOP_ADD_REG_LSR (int,int,int,int) ;
 int EOP_AND_IMM (int,int,int,int) ;
 int EOP_LDRH_SIMPLE (int ,int) ;
 int EOP_ORR_IMM (int,int,int,int) ;
 int* hostreg_r ;
 int known_regb ;
 TYPE_1__ known_regs ;
 int tr_bank_read (int) ;
 int tr_ptrr_mod (int,int,int,int) ;

__attribute__((used)) static void tr_rX_read(int r, int mod)
{
 if ((r&3) == 3)
 {
  tr_bank_read(((r << 6) & 0x100) + mod);
 }
 else
 {
  if (known_regb & (1 << (r + 8))) {
   tr_bank_read(((r << 6) & 0x100) | known_regs.r[r]);
  } else {
   int reg = (r < 4) ? 8 : 9;
   int ror = ((4 - (r&3))*8) & 0x1f;
   EOP_AND_IMM(1,reg,ror/2,0xff);
   if (r >= 4)
    EOP_ORR_IMM(1,1,((ror-8)&0x1f)/2,1);
   if (r&3) EOP_ADD_REG_LSR(1,7,1, (r&3)*8-1);
   else EOP_ADD_REG_LSL(1,7,1,1);
   EOP_LDRH_SIMPLE(0,1);
   hostreg_r[0] = hostreg_r[1] = -1;
  }
  tr_ptrr_mod(r, mod, 1, 1);
 }
}
