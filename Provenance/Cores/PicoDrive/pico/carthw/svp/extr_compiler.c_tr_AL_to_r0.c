
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int emu_status; } ;


 int EOP_BIC_IMM (int ,int ,int ,int) ;
 int EOP_LDR_IMM (int ,int,int) ;
 int EOP_MOV_REG_SIMPLE (int ,int) ;
 int EOP_STR_IMM (int ,int,int) ;
 int KRREG_PMC ;
 int SSP_AL ;
 int SSP_PMC_HAVE_ADDR ;
 int SSP_PMC_SET ;
 int* hostreg_r ;
 int known_regb ;
 TYPE_1__ known_regs ;

__attribute__((used)) static void tr_AL_to_r0(int op)
{
 if (op == 0x000f) {
  if (known_regb & KRREG_PMC) {
   known_regs.emu_status &= ~(SSP_PMC_SET|SSP_PMC_HAVE_ADDR);
  } else {
   EOP_LDR_IMM(0,7,0x484);
   EOP_BIC_IMM(0,0,0,SSP_PMC_SET|SSP_PMC_HAVE_ADDR);
   EOP_STR_IMM(0,7,0x484);
  }
 }

 if (hostreg_r[0] != (SSP_AL<<16)) {
  EOP_MOV_REG_SIMPLE(0, 5);
  hostreg_r[0] = SSP_AL<<16;
 }
}
