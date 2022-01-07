
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {char isdoingcp; int* regmap_entry; char wasdoingcp; int regmap; } ;


 int SR ;
 int assert (int) ;
 int** cpmap ;
 int emit_addimm (char,int,char) ;
 int emit_andimm (char,int,char) ;
 int emit_cmpeqimm (char,int,char,char) ;
 int emit_loadreg (int,char) ;
 int emit_movimm (int,char) ;
 int emit_orimm (char,int,char) ;
 int emit_sh2tstimm (char,int,char,char) ;
 int emit_xorimm (char,int,char) ;
 char get_reg (int ,int) ;
 int* imm ;
 int* opcode ;
 int* opcode2 ;
 int* rs1 ;
 int* rt1 ;

void imm8_assemble(int i,struct regstat *i_regs)
{
  if(opcode[i]==0x7) {
    signed char s,t;
    t=get_reg(i_regs->regmap,rt1[i]);
    s=get_reg(i_regs->regmap,rs1[i]);

    assert(s>=0);
    if(t>=0) {
      if(!((i_regs->isdoingcp>>t)&1)) {
        if(s<0) {
          if(i_regs->regmap_entry[t]!=rs1[i]) emit_loadreg(rs1[i],t);
          emit_addimm(t,imm[i],t);
        }else{
          if(!((i_regs->wasdoingcp>>s)&1))
            emit_addimm(s,imm[i],t);
          else
            emit_movimm(cpmap[i][s]+imm[i],t);
        }
      }
    }
  }
  else if(opcode[i]==0x8) {
    signed char s,sr,temp;
    s=get_reg(i_regs->regmap,rs1[i]);
    sr=get_reg(i_regs->regmap,SR);
    temp=get_reg(i_regs->regmap,-1);
    assert(s>=0);
    assert(sr>=0);
    assert(temp>=0);
    emit_cmpeqimm(s,imm[i],sr,temp);
  }
  else if(opcode[i]==12) {
    if(opcode2[i]==8) {
      signed char s,sr,temp;
      s=get_reg(i_regs->regmap,rs1[i]);
      sr=get_reg(i_regs->regmap,SR);
      temp=get_reg(i_regs->regmap,-1);
      assert(s>=0);
      assert(sr>=0);
      assert(temp>=0);
      emit_sh2tstimm(s,imm[i],sr,temp);
    }else{
      signed char s,t;
      t=get_reg(i_regs->regmap,rt1[i]);
      s=get_reg(i_regs->regmap,rs1[i]);
      if(t>=0 && !((i_regs->isdoingcp>>t)&1)) {
        if(opcode2[i]==9)
        {
          if(s<0) {
            if(i_regs->regmap_entry[t]!=rs1[i]) emit_loadreg(rs1[i],t);
            emit_andimm(t,imm[i],t);
          }else{
            if(!((i_regs->wasdoingcp>>s)&1))
              emit_andimm(s,imm[i],t);
            else
              emit_movimm(cpmap[i][s]&imm[i],t);
          }
        }
        else
        if(opcode2[i]==10)
        {
          if(s<0) {
            if(i_regs->regmap_entry[t]!=rs1[i]) emit_loadreg(rs1[i],t);
            emit_xorimm(t,imm[i],t);
          }else{
            if(!((i_regs->wasdoingcp>>s)&1))
              emit_xorimm(s,imm[i],t);
            else
              emit_movimm(cpmap[i][s]^imm[i],t);
          }
        }
        else
        if(opcode2[i]==11)
        {
          if(s<0) {
            if(i_regs->regmap_entry[t]!=rs1[i]) emit_loadreg(rs1[i],t);
            emit_orimm(t,imm[i],t);
          }else{
            if(!((i_regs->wasdoingcp>>s)&1))
              emit_orimm(s,imm[i],t);
            else
              emit_movimm(cpmap[i][s]|imm[i],t);
          }
        }
      }
    }
  }
  else {
    signed char t;
    assert(opcode[i]==0xE);
    t=get_reg(i_regs->regmap,rt1[i]);

    if(t>=0) {
      if(!((i_regs->isdoingcp>>t)&1))
        emit_movimm(imm[i]<<16,t);
    }
  }
}
