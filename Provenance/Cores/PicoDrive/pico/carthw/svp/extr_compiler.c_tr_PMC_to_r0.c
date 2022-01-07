
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l; } ;
struct TYPE_4__ {int emu_status; TYPE_1__ pmc; } ;


 int A_COND_EQ ;
 int A_COND_NE ;
 int A_OP_BIC ;
 int A_OP_ORR ;
 int EOP_C_DOP_IMM (int ,int ,int ,int,int,int ,int) ;
 int EOP_LDR_IMM (int,int,int) ;
 int EOP_STR_IMM (int,int,int) ;
 int EOP_TST_IMM (int,int ,int) ;
 int KRREG_PMC ;
 int SSP_PMC ;
 int SSP_PMC_HAVE_ADDR ;
 int SSP_PMC_SET ;
 int* hostreg_r ;
 int known_regb ;
 TYPE_2__ known_regs ;
 int tr_flush_dirty_ST () ;
 int tr_mov16 (int ,int ) ;

__attribute__((used)) static void tr_PMC_to_r0(int op)
{
 if (known_regb & KRREG_PMC)
 {
  if (known_regs.emu_status & SSP_PMC_HAVE_ADDR) {
   known_regs.emu_status |= SSP_PMC_SET;
   known_regs.emu_status &= ~SSP_PMC_HAVE_ADDR;

  } else {
   tr_mov16(0, known_regs.pmc.l);
   known_regs.emu_status |= SSP_PMC_HAVE_ADDR;
  }
 }
 else
 {
  EOP_LDR_IMM(1,7,0x484);
  tr_flush_dirty_ST();
  if (op != 0x000e)
   EOP_LDR_IMM(0, 7, 0x400+SSP_PMC*4);
  EOP_TST_IMM(1, 0, SSP_PMC_HAVE_ADDR);
  EOP_C_DOP_IMM(A_COND_EQ,A_OP_ORR,0, 1, 1, 0, SSP_PMC_HAVE_ADDR);
  EOP_C_DOP_IMM(A_COND_NE,A_OP_BIC,0, 1, 1, 0, SSP_PMC_HAVE_ADDR);
  EOP_C_DOP_IMM(A_COND_NE,A_OP_ORR,0, 1, 1, 0, SSP_PMC_SET);
  EOP_STR_IMM(1,7,0x484);
  hostreg_r[0] = hostreg_r[1] = -1;
 }
}
