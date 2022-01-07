
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {scalar_t__ isdoingcp; } ;


 int CCREG ;
 int MOREG ;
 int SR ;
 int VBR ;
 int alloc_cc (struct regstat*,int) ;
 int alloc_reg (struct regstat*,int,int) ;
 int alloc_reg_temp (struct regstat*,int,int) ;
 int dirty_reg (struct regstat*,int) ;
 int* minimum_free_regs ;
 int* opcode ;

void system_alloc(struct regstat *current,int i)
{
  alloc_cc(current,i);
  dirty_reg(current,CCREG);
  if(opcode[i]==12) {
    alloc_reg(current,i,15);
    dirty_reg(current,15);
    alloc_reg(current,i,SR);
    alloc_reg(current,i,VBR);
    alloc_reg(current,i,MOREG);
    alloc_reg_temp(current,i,-1);
    minimum_free_regs[i]=1;
  }
  current->isdoingcp=0;
}
