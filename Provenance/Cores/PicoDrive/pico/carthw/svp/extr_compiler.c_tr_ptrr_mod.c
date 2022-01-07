
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* r; TYPE_1__* gr; } ;
struct TYPE_3__ {int h; } ;


 int A_COND_AL ;
 int A_COND_EQ ;
 int A_OP_ADD ;
 int A_OP_AND ;
 int A_OP_MOV ;
 int A_OP_SUB ;
 int EOP_ADD_IMM (int,int,int ,int) ;
 int EOP_ADD_REG2_LSL (int,int,int,int) ;
 int EOP_AND_IMM (int,int,int ,int) ;
 int EOP_C_DOP_IMM (int ,int ,int,int,int,int,int) ;
 int EOP_MOV_IMM (int,int,int) ;
 int EOP_MOV_REG2_ROR (int,int,int) ;
 int EOP_MOV_REG_LSR (int,int,int) ;
 int EOP_MOV_REG_ROR (int,int,int) ;
 int EOP_RSB_IMM (int,int,int ,int) ;
 int EOP_SUB_IMM (int,int,int ,int) ;
 int EOP_SUB_REG2_LSL (int,int,int,int) ;
 int KRREG_ST ;
 size_t SSP_ST ;
 int dirty_regb ;
 int* hostreg_r ;
 int known_regb ;
 TYPE_2__ known_regs ;
 int tr_release_pr (int) ;

__attribute__((used)) static void tr_ptrr_mod(int r, int mod, int need_modulo, int count)
{
 int modulo_shift = -1;

 if (mod == 0) return;

 if (!need_modulo || mod == 1)
  modulo_shift = 8;
 else if (need_modulo && (known_regb & KRREG_ST)) {
  modulo_shift = known_regs.gr[SSP_ST].h & 7;
  if (modulo_shift == 0) modulo_shift = 8;
 }

 if (modulo_shift == -1)
 {
  int reg = (r < 4) ? 8 : 9;
  tr_release_pr(r);
  if (dirty_regb & KRREG_ST) {

   EOP_AND_IMM(1, 6, 0, 0x70);
   EOP_SUB_IMM(1, 1, 0, 0x10);
   EOP_AND_IMM(1, 1, 0, 0x70);
   EOP_ADD_IMM(1, 1, 0, 0x10);
  } else {
   EOP_C_DOP_IMM(A_COND_AL,A_OP_AND,1,6,1,0,0x70);
   EOP_C_DOP_IMM(A_COND_EQ,A_OP_MOV,0,0,1,0,0x80);
  }
  EOP_MOV_REG_LSR(1, 1, 4);
  EOP_RSB_IMM(2, 1, 0, 8);
  EOP_MOV_IMM(3, 8/2, count);
  if (r&3)
   EOP_ADD_IMM(1, 1, 0, (r&3)*8);
  EOP_MOV_REG2_ROR(reg,reg,1);
  if (mod == 2)
       EOP_SUB_REG2_LSL(reg,reg,3,2);
  else EOP_ADD_REG2_LSL(reg,reg,3,2);
  EOP_RSB_IMM(1, 1, 0, 32);
  EOP_MOV_REG2_ROR(reg,reg,1);
  hostreg_r[1] = hostreg_r[2] = hostreg_r[3] = -1;
 }
 else if (known_regb & (1 << (r + 8)))
 {
  int modulo = (1 << modulo_shift) - 1;
  if (mod == 2)
       known_regs.r[r] = (known_regs.r[r] & ~modulo) | ((known_regs.r[r] - count) & modulo);
  else known_regs.r[r] = (known_regs.r[r] & ~modulo) | ((known_regs.r[r] + count) & modulo);
 }
 else
 {
  int reg = (r < 4) ? 8 : 9;
  int ror = ((r&3) + 1)*8 - (8 - modulo_shift);
  EOP_MOV_REG_ROR(reg,reg,ror);

  EOP_C_DOP_IMM(A_COND_AL,(mod==2)?A_OP_SUB:A_OP_ADD,0,reg,reg, 8/2, count << (8 - modulo_shift));
  EOP_MOV_REG_ROR(reg,reg,32-ror);
 }
}
