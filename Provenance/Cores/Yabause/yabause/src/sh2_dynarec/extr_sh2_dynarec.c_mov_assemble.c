
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {int regmap; } ;


 int emit_loadreg (int ,char) ;
 int emit_mov (char,char) ;
 char get_reg (int ,int ) ;
 int * rs1 ;
 int * rt1 ;

void mov_assemble(int i,struct regstat *i_regs)
{
  signed char s,t;
  t=get_reg(i_regs->regmap,rt1[i]);

  if(t>=0) {
    s=get_reg(i_regs->regmap,rs1[i]);
    if(s>=0) {if(s!=t) emit_mov(s,t);}
    else emit_loadreg(rs1[i],t);
  }
}
