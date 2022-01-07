
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int regmap; } ;


 int emit_loadreg (int ,char) ;
 int emit_movsbl_reg (char,char) ;
 int emit_movswl_reg (char,char) ;
 int emit_movzbl_reg (char,char) ;
 int emit_movzwl_reg (char,char) ;
 char get_reg (int ,int ) ;
 int* opcode2 ;
 int * rs1 ;
 int * rt1 ;

void ext_assemble(int i,struct regstat *i_regs)
{
  signed char s,t;
  t=get_reg(i_regs->regmap,rt1[i]);

  if(t>=0) {
    s=get_reg(i_regs->regmap,rs1[i]);
    if(s>=0) {
      if(opcode2[i]==12) emit_movzbl_reg(s,t);
      if(opcode2[i]==13) emit_movzwl_reg(s,t);
      if(opcode2[i]==14) emit_movsbl_reg(s,t);
      if(opcode2[i]==15) emit_movswl_reg(s,t);
    }
    else
    {
      emit_loadreg(rs1[i],t);
      if(opcode2[i]==12) emit_movzbl_reg(t,t);
      if(opcode2[i]==13) emit_movzwl_reg(t,t);
      if(opcode2[i]==14) emit_movsbl_reg(t,t);
      if(opcode2[i]==15) emit_movswl_reg(t,t);
    }
  }
}
