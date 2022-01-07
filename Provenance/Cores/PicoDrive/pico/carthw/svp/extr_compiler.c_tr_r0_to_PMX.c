
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int v; } ;
struct TYPE_4__ {int emu_status; int* pmac_write; TYPE_1__ pmc; } ;


 int EOP_LDR_IMM (int,int,int) ;
 int EOP_MOV_IMM (int,int ,int) ;
 int EOP_STRH_REG (int ,int,int) ;
 int EOP_STR_IMM (int,int,int) ;
 int KRREG_PMC ;
 int SSP_PMC_HAVE_ADDR ;
 int SSP_PMC_SET ;
 int dirty_regb ;
 int emith_call_c_func (int ) ;
 int emith_move_r_imm (int,int) ;
 int get_inc (int) ;
 int hostreg_clear () ;
 int* hostreg_r ;
 int known_regb ;
 TYPE_2__ known_regs ;
 int ssp_pm_write ;
 int tr_flush_dirty_ST () ;
 int tr_mov16 (int,int) ;
 int tr_unhandled () ;

__attribute__((used)) static void tr_r0_to_PMX(int reg)
{
 if ((known_regb & KRREG_PMC) && (known_regs.emu_status & SSP_PMC_SET))
 {
  known_regs.pmac_write[reg] = known_regs.pmc.v;
  known_regs.emu_status &= ~SSP_PMC_SET;
  known_regb |= 1 << (25+reg);
  dirty_regb |= 1 << (25+reg);
  return;
 }

 if ((known_regb & KRREG_PMC) && (known_regb & (1 << (25+reg))))
 {
  int mode, addr;

  known_regs.emu_status &= ~SSP_PMC_HAVE_ADDR;

  mode = known_regs.pmac_write[reg]>>16;
  addr = known_regs.pmac_write[reg]&0xffff;
  if ((mode & 0x43ff) == 0x0018)
  {
   int inc = get_inc(mode);
   if (mode & 0x0400) tr_unhandled();
   EOP_LDR_IMM(1,7,0x490);
   emith_move_r_imm(2, addr << 1);
   EOP_STRH_REG(0,1,2);
   known_regs.pmac_write[reg] += inc;
  }
  else if ((mode & 0xfbff) == 0x4018)
  {
   if (mode & 0x0400) tr_unhandled();
   EOP_LDR_IMM(1,7,0x490);
   emith_move_r_imm(2, addr << 1);
   EOP_STRH_REG(0,1,2);
   known_regs.pmac_write[reg] += (addr&1) ? 31 : 1;
  }
  else if ((mode & 0x47ff) == 0x001c)
  {
   int inc = get_inc(mode);
   EOP_LDR_IMM(1,7,0x48c);
   emith_move_r_imm(2, (addr&0x3ff) << 1);
   EOP_STRH_REG(0,1,2);
   EOP_MOV_IMM(1,0,1);
   EOP_STR_IMM(1,7,0x494);
   known_regs.pmac_write[reg] += inc;
  }
  else
   tr_unhandled();

  known_regs.pmc.v = known_regs.pmac_write[reg];

  dirty_regb |= KRREG_PMC;
  dirty_regb |= 1 << (25+reg);
  hostreg_r[1] = hostreg_r[2] = -1;
  return;
 }

 known_regb &= ~KRREG_PMC;
 dirty_regb &= ~KRREG_PMC;
 known_regb &= ~(1 << (25+reg));
 dirty_regb &= ~(1 << (25+reg));


 tr_flush_dirty_ST();

 tr_mov16(1, reg);
 emith_call_c_func(ssp_pm_write);
 hostreg_clear();
}
