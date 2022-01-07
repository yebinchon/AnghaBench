
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int v; } ;
struct TYPE_4__ {int* pmac_write; int* pmac_read; int emu_status; TYPE_1__ pmc; } ;


 int KRREG_PMC ;
 int PROGRAM (int) ;
 int SSP_PMC_SET ;
 int dirty_regb ;
 int known_regb ;
 TYPE_2__ known_regs ;
 int n_in_ops ;
 int tr_unhandled () ;

__attribute__((used)) static int tr_detect_set_pm(unsigned int op, int *pc, int imm)
{
 u32 pmcv, tmpv;
 if (!((op&0xfef0) == 0x08e0 && (PROGRAM(*pc)&0xfef0) == 0x08e0)) return 0;




 (*pc)++;
 pmcv = imm | (PROGRAM((*pc)++) << 16);
 known_regs.pmc.v = pmcv;
 known_regb |= KRREG_PMC;
 dirty_regb |= KRREG_PMC;
 known_regs.emu_status |= SSP_PMC_SET;
 n_in_ops++;


 tmpv = PROGRAM(*pc);
 if ((tmpv & 0xfff8) == 0x08 || (tmpv & 0xff8f) == 0x80)
 {
  int is_write = (tmpv & 0xff8f) == 0x80;
  int reg = is_write ? ((tmpv>>4)&0x7) : (tmpv&0x7);
  if (reg > 4) tr_unhandled();
  if ((tmpv & 0x0f) != 0 && (tmpv & 0xf0) != 0) tr_unhandled();
  if (is_write)
   known_regs.pmac_write[reg] = pmcv;
  else
   known_regs.pmac_read[reg] = pmcv;
  known_regb |= is_write ? (1 << (reg+25)) : (1 << (reg+20));
  dirty_regb |= is_write ? (1 << (reg+25)) : (1 << (reg+20));
  known_regs.emu_status &= ~SSP_PMC_SET;
  (*pc)++;
  n_in_ops++;
  return 5;
 }

 tr_unhandled();
 return 4;
}
