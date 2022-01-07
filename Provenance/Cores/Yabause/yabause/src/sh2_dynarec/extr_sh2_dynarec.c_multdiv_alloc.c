
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {long long u; } ;


 int EAX ;
 int EDX ;
 long long MACH ;
 long long MACL ;
 long long SR ;
 int alloc_reg (struct regstat*,int,long long) ;
 int alloc_reg_temp (struct regstat*,int,int) ;
 int alloc_x86_reg (struct regstat*,int,long long,int ) ;
 int clear_const (struct regstat*,long long) ;
 int dirty_reg (struct regstat*,long long) ;
 int* minimum_free_regs ;
 int* opcode ;
 int* opcode2 ;
 long long* rs1 ;
 long long* rs2 ;

void multdiv_alloc(struct regstat *current,int i)
{

  if(opcode[i]==0) {
    if(opcode2[i]==7)
    {
      clear_const(current,rs1[i]);
      clear_const(current,rs2[i]);
      clear_const(current,MACL);
      alloc_reg(current,i,rs1[i]);
      alloc_reg(current,i,rs2[i]);
      alloc_reg(current,i,MACL);
      dirty_reg(current,MACL);
    }
    if(opcode2[i]==8)
    {
      clear_const(current,MACH);
      clear_const(current,MACL);
      alloc_reg(current,i,MACH);
      alloc_reg(current,i,MACL);
      dirty_reg(current,MACH);
      dirty_reg(current,MACL);
    }
    if(opcode2[i]==9)
    {
      alloc_reg(current,i,SR);
      dirty_reg(current,SR);
    }
  }
  if(opcode[i]==2) {
    if(opcode2[i]==7)
    {
      clear_const(current,rs1[i]);
      clear_const(current,rs2[i]);
      alloc_reg(current,i,rs1[i]);
      alloc_reg(current,i,rs2[i]);
      alloc_reg(current,i,SR);
      dirty_reg(current,SR);


      alloc_reg_temp(current,i,-1);
      minimum_free_regs[i]=1;

    }
    if(opcode2[i]==14||opcode2[i]==15)
    {
      clear_const(current,rs1[i]);
      clear_const(current,rs2[i]);
      clear_const(current,MACL);
      alloc_reg(current,i,rs1[i]);
      alloc_reg(current,i,rs2[i]);
      alloc_reg(current,i,MACL);
      dirty_reg(current,MACL);

      alloc_reg_temp(current,i,-1);
      minimum_free_regs[i]=1;
    }
  }
  if(opcode[i]==3) {


    if(!(current->u&(1LL<<MACH))) {
      alloc_x86_reg(current,i,MACH,EDX);
      current->u&=~(1LL<<MACL);
    }
    alloc_x86_reg(current,i,MACL,EAX);







    clear_const(current,rs1[i]);
    clear_const(current,rs2[i]);
    clear_const(current,MACH);
    clear_const(current,MACL);
    alloc_reg(current,i,rs1[i]);
    alloc_reg(current,i,rs2[i]);
    dirty_reg(current,MACH);
    dirty_reg(current,MACL);
  }
}
