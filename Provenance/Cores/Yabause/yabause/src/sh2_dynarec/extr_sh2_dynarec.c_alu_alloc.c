
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int dummy; } ;


 int SR ;
 int alloc_reg (struct regstat*,int,int ) ;
 int alloc_reg_temp (struct regstat*,int,int) ;
 int clear_const (struct regstat*,int ) ;
 int dirty_reg (struct regstat*,int ) ;
 int* minimum_free_regs ;
 scalar_t__ needed_again (int ,int) ;
 int* opcode ;
 int* opcode2 ;
 int * rs1 ;
 int * rs2 ;
 int * rt1 ;

void alu_alloc(struct regstat *current,int i)
{
  if(opcode[i]==2) {
    alloc_reg(current,i,rs1[i]);
    alloc_reg(current,i,rs2[i]);
    clear_const(current,rs2[i]);
    if(opcode2[i]>8&&opcode2[i]<=11) {
      alloc_reg(current,i,rt1[i]);
    }
    else
    {
      alloc_reg(current,i,SR);
      dirty_reg(current,SR);


      if(opcode2[i]==8) {
        alloc_reg_temp(current,i,-1);
        minimum_free_regs[i]=1;
      }
      if(opcode2[i]==12) {
        alloc_reg_temp(current,i,-1);
        minimum_free_regs[i]=1;
      }
    }
  }
  if(opcode[i]==3) {
    alloc_reg(current,i,rs1[i]);
    alloc_reg(current,i,rs2[i]);
    clear_const(current,rs2[i]);
    if(opcode2[i]<8) {
      alloc_reg(current,i,SR);
      dirty_reg(current,SR);
      alloc_reg_temp(current,i,-1);
      minimum_free_regs[i]=1;
    }else{
      alloc_reg(current,i,rt1[i]);
      if(opcode2[i]&3) {
        alloc_reg(current,i,SR);
        dirty_reg(current,SR);

        if((opcode2[i]&3)==3) {

          alloc_reg_temp(current,i,-1);
          minimum_free_regs[i]=1;
        }
      }
    }
  }
  if(opcode[i]==4) {

    alloc_reg(current,i,rs1[i]);
    if(opcode2[i]==0) dirty_reg(current,rt1[i]);
    alloc_reg(current,i,SR);
    dirty_reg(current,SR);
    if(opcode2[i]>0) {
      alloc_reg_temp(current,i,-1);
      minimum_free_regs[i]=1;
    }
  }
  if(opcode[i]==6) {
    if(needed_again(rs1[i],i)) alloc_reg(current,i,rs1[i]);
    alloc_reg(current,i,rt1[i]);
    if(opcode2[i]==8||opcode2[i]==9) {
      alloc_reg_temp(current,i,-1);
      minimum_free_regs[i]=1;
    }
    if(opcode2[i]==10) {

      alloc_reg(current,i,SR);
      dirty_reg(current,SR);
    }
  }
  clear_const(current,rs1[i]);
  clear_const(current,rt1[i]);
  dirty_reg(current,rt1[i]);
}
