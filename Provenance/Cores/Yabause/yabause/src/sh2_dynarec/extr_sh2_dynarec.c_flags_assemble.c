
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int regmap; } ;


 int SR ;
 int emit_andimm (char,int,char) ;
 int emit_orimm (char,int,char) ;
 char get_reg (int ,int ) ;
 int* opcode2 ;
 int* opcode3 ;
 int * rt1 ;

void flags_assemble(int i,struct regstat *i_regs)
{
  signed char sr,t;
  sr=get_reg(i_regs->regmap,SR);
  if(opcode2[i]==8) {
    if(opcode3[i]==0) emit_andimm(sr,~1,sr);
    if(opcode3[i]==1) emit_orimm(sr,1,sr);
  }else
  if(opcode2[i]==9) {
    t=get_reg(i_regs->regmap,rt1[i]);
    if(t>=0)
      emit_andimm(sr,1,t);
  }
}
