
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int dummy; } ;


 scalar_t__ SR ;
 scalar_t__ TBIT ;
 int alloc_reg (struct regstat*,int,scalar_t__) ;
 int alloc_reg_temp (struct regstat*,int,int) ;
 int assert (int) ;
 int clear_const (struct regstat*,scalar_t__) ;
 int dirty_reg (struct regstat*,scalar_t__) ;
 int get_const (struct regstat*,scalar_t__) ;
 int* imm ;
 scalar_t__ is_const (struct regstat*,scalar_t__) ;
 int* minimum_free_regs ;
 int* opcode ;
 int* opcode2 ;
 scalar_t__* rs1 ;
 scalar_t__* rt1 ;
 int set_const (struct regstat*,scalar_t__,int) ;

void imm8_alloc(struct regstat *current,int i)
{


  alloc_reg(current,i,rs1[i]);
  if(rt1[i]>=0&&rt1[i]!=TBIT) alloc_reg(current,i,rt1[i]);
  if(opcode[i]==0x7) {
    if(is_const(current,rs1[i])) {
      int v=get_const(current,rs1[i]);
      set_const(current,rt1[i],v+imm[i]);
    }
    else clear_const(current,rt1[i]);
  }
  else if(opcode[i]==0x8) {
    alloc_reg(current,i,SR);
    dirty_reg(current,SR);
    alloc_reg_temp(current,i,-1);
    minimum_free_regs[i]=1;
  }
  else if(opcode[i]==12) {
    if(opcode2[i]==8) {
      alloc_reg(current,i,SR);
      dirty_reg(current,SR);
      alloc_reg_temp(current,i,-1);
      minimum_free_regs[i]=1;
    }else

    if(is_const(current,rs1[i])) {
      int v=get_const(current,rs1[i]);
      if(opcode2[i]==0x09) set_const(current,rt1[i],v&imm[i]);
      if(opcode2[i]==0x0a) set_const(current,rt1[i],v^imm[i]);
      if(opcode2[i]==0x0b) set_const(current,rt1[i],v|imm[i]);
    }
    else clear_const(current,rt1[i]);
  }
  else {
    assert(opcode[i]==0xE);
    set_const(current,rt1[i],imm[i]);
  }
  if(rt1[i]>=0&&rt1[i]!=TBIT) dirty_reg(current,rt1[i]);
}
