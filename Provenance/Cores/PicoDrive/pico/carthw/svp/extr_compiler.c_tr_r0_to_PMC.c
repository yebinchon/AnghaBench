
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h; int l; int v; } ;
struct TYPE_4__ {int emu_status; TYPE_1__ pmc; } ;


 int A_COND_EQ ;
 int A_COND_NE ;
 int A_OP_BIC ;
 int A_OP_ORR ;
 int EOP_ADD_IMM (int,int,int,int) ;
 int EOP_C_AM3_IMM (int ,int,int ,int,int ,int ,int,int) ;
 int EOP_C_DOP_IMM (int ,int ,int ,int,int,int ,int) ;
 int EOP_LDR_IMM (int,int,int) ;
 int EOP_STR_IMM (int,int,int) ;
 int EOP_TST_IMM (int,int ,int) ;
 int KRREG_PMC ;
 int SSP_PMC ;
 int SSP_PMC_HAVE_ADDR ;
 int SSP_PMC_SET ;
 int dirty_regb ;
 int emith_move_r_imm (int,int ) ;
 int* hostreg_r ;
 int known_regb ;
 TYPE_2__ known_regs ;
 int tr_flush_dirty_ST () ;

__attribute__((used)) static void tr_r0_to_PMC(int const_val)
{
 if ((known_regb & KRREG_PMC) && const_val != -1)
 {
  if (known_regs.emu_status & SSP_PMC_HAVE_ADDR) {
   known_regs.emu_status |= SSP_PMC_SET;
   known_regs.emu_status &= ~SSP_PMC_HAVE_ADDR;
   known_regs.pmc.h = const_val;
  } else {
   known_regs.emu_status |= SSP_PMC_HAVE_ADDR;
   known_regs.pmc.l = const_val;
  }
 }
 else
 {
  tr_flush_dirty_ST();
  if (known_regb & KRREG_PMC) {
   emith_move_r_imm(1, known_regs.pmc.v);
   EOP_STR_IMM(1,7,0x400+SSP_PMC*4);
   known_regb &= ~KRREG_PMC;
   dirty_regb &= ~KRREG_PMC;
  }
  EOP_LDR_IMM(1,7,0x484);
  EOP_ADD_IMM(2,7,24/2,4);
  EOP_TST_IMM(1, 0, SSP_PMC_HAVE_ADDR);
  EOP_C_AM3_IMM(A_COND_EQ,1,0,2,0,0,1,SSP_PMC*4);
  EOP_C_AM3_IMM(A_COND_NE,1,0,2,0,0,1,SSP_PMC*4+2);
  EOP_C_DOP_IMM(A_COND_EQ,A_OP_ORR,0, 1, 1, 0, SSP_PMC_HAVE_ADDR);
  EOP_C_DOP_IMM(A_COND_NE,A_OP_BIC,0, 1, 1, 0, SSP_PMC_HAVE_ADDR);
  EOP_C_DOP_IMM(A_COND_NE,A_OP_ORR,0, 1, 1, 0, SSP_PMC_SET);
  EOP_STR_IMM(1,7,0x484);
  hostreg_r[1] = hostreg_r[2] = -1;
 }
}
