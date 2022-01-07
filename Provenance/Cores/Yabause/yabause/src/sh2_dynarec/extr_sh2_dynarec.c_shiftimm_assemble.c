
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {long long u; int regmap; } ;


 scalar_t__ SR ;
 long long TBIT ;
 int assert (int) ;
 int emit_rotclsr (char,char) ;
 int emit_rotcrsr (char,char) ;
 int emit_rotl (char) ;
 int emit_rotlsr (char,char) ;
 int emit_rotr (char) ;
 int emit_rotrsr (char,char) ;
 int emit_sarimm (char,int,char) ;
 int emit_sarsr (char,char) ;
 int emit_shlimm (char,int,char) ;
 int emit_shlsr (char,char) ;
 int emit_shrdimm (char,char,int,char) ;
 int emit_shrimm (char,int,char) ;
 int emit_shrsr (char,char) ;
 char get_reg (int ,scalar_t__) ;
 int* opcode ;
 int* opcode2 ;
 int* opcode3 ;
 scalar_t__* rs1 ;
 scalar_t__* rs2 ;
 scalar_t__* rt1 ;

void shiftimm_assemble(int i,struct regstat *i_regs)
{
  if(opcode[i]==4)
  {
    if(opcode2[i]<8) {
      signed char s,t,sr;
      s=get_reg(i_regs->regmap,rs1[i]);
      t=get_reg(i_regs->regmap,rt1[i]);
      sr=get_reg(i_regs->regmap,SR);
      assert(s==t);
      if(opcode2[i]==0)
      {
        if(i_regs->u&(1LL<<TBIT)) emit_shlimm(s,1,s);
        else emit_shlsr(s,sr);
      }
      else if(opcode2[i]==1)
      {
        if(i_regs->u&(1LL<<TBIT)) {

          if(opcode3[i]==0) emit_shrimm(s,1,s);
          if(opcode3[i]==2) emit_sarimm(s,1,s);
        }else{

          if(opcode3[i]==0) emit_shrsr(s,sr);
          if(opcode3[i]==2) emit_sarsr(s,sr);
        }
      }
      else if(opcode2[i]==4) {
        if(opcode3[i]==0) {
          if(i_regs->u&(1LL<<TBIT)) {
            emit_rotl(s);
          }else{
            emit_rotlsr(s,sr);
          }
        }
        if(opcode3[i]==2) emit_rotclsr(s,sr);
      }
      else {
        assert(opcode2[i]==5);
        if(opcode3[i]==0) {
          if(i_regs->u&(1LL<<TBIT)) {
            emit_rotr(s);
          }else{
            emit_rotrsr(s,sr);
          }
        }
        if(opcode3[i]==2) emit_rotcrsr(s,sr);
      }
    }else{
      signed char s,t;
      s=get_reg(i_regs->regmap,rs1[i]);
      t=get_reg(i_regs->regmap,rt1[i]);

      if(t>=0){
        if(opcode2[i]==8)
        {
          if(opcode3[i]==0) emit_shlimm(s,2,t);
          if(opcode3[i]==1) emit_shlimm(s,8,t);
          if(opcode3[i]==2) emit_shlimm(s,16,t);
        }
        if(opcode2[i]==9)
        {
          if(opcode3[i]==0) emit_shrimm(s,2,t);
          if(opcode3[i]==1) emit_shrimm(s,8,t);
          if(opcode3[i]==2) emit_shrimm(s,16,t);
        }
      }
    }
  }
  else if(opcode[i]==2)
  {
    signed char s,t,sr;
    s=get_reg(i_regs->regmap,rs1[i]);
    t=get_reg(i_regs->regmap,rt1[i]);
    assert(rs2[i]==rt1[i]);
    emit_shrdimm(t,s,16,t);
  }
}
