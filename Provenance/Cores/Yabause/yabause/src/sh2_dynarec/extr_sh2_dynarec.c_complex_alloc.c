
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int dummy; } ;


 int EAX ;
 int EBP ;
 int EBX ;
 int ECX ;
 int EDI ;
 int EDX ;
 int HOST_REGS ;
 int MACH ;
 int MACL ;
 int SR ;
 int alloc_all (struct regstat*,int) ;
 int alloc_arm_reg (struct regstat*,int,int ,int) ;
 int alloc_x86_reg (struct regstat*,int,int ,int ) ;
 int assert (int ) ;
 int clear_const (struct regstat*,int ) ;
 int dirty_reg (struct regstat*,int ) ;
 int * minimum_free_regs ;
 int* opcode ;
 int* opcode2 ;
 int * rs1 ;
 int * rs2 ;

void complex_alloc(struct regstat *current,int i)
{
  if(opcode[i]==3&&opcode2[i]==4) {

    alloc_x86_reg(current,i,rs1[i],ECX);
    alloc_x86_reg(current,i,rs2[i],EAX);
    alloc_x86_reg(current,i,SR,EDX);
    alloc_all(current,i);
    dirty_reg(current,rs2[i]);
    dirty_reg(current,SR);
  }
  if(opcode[i]==0&&opcode2[i]==15) {

    alloc_x86_reg(current,i,rs1[i],EBP);
    alloc_x86_reg(current,i,rs2[i],EDI);
    alloc_x86_reg(current,i,SR,EBX);
    alloc_all(current,i);
    alloc_x86_reg(current,i,MACL,EAX);
    alloc_x86_reg(current,i,MACH,EDX);
    dirty_reg(current,rs1[i]);
    dirty_reg(current,rs2[i]);
    dirty_reg(current,MACH);
    dirty_reg(current,MACL);
    clear_const(current,MACH);
    clear_const(current,MACL);
  }
  if(opcode[i]==4&&opcode2[i]==15) {

    alloc_x86_reg(current,i,rs1[i],EBP);
    alloc_x86_reg(current,i,rs2[i],EDI);
    alloc_x86_reg(current,i,SR,EBX);
    alloc_all(current,i);
    alloc_x86_reg(current,i,MACL,EAX);
    alloc_x86_reg(current,i,MACH,EDX);
    dirty_reg(current,rs1[i]);
    dirty_reg(current,rs2[i]);
    dirty_reg(current,MACH);
    dirty_reg(current,MACL);
    clear_const(current,MACH);
    clear_const(current,MACL);
  }
  clear_const(current,rs1[i]);
  clear_const(current,rs2[i]);
  minimum_free_regs[i]=HOST_REGS;
}
