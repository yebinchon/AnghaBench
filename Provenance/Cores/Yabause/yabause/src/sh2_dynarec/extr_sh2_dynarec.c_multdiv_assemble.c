
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regstat {long long u; int regmap; } ;


 int EAX ;
 int EDX ;
 int HOST_TEMPREG ;
 long long MACH ;
 long long MACL ;
 long long SR ;
 int assert (int) ;
 int emit_andimm (int,int,int) ;
 int emit_div0s (int,int,int,int) ;
 int emit_imul (int) ;
 int emit_mov (int,int) ;
 int emit_movswl_reg (int,int) ;
 int emit_movzwl_reg (int,int) ;
 int emit_mul (int) ;
 int emit_multiply (int,int,int) ;
 int emit_smull (int,int,int,int) ;
 int emit_umull (int,int,int,int) ;
 int emit_zeroreg (int) ;
 int get_reg (int ,long long) ;
 int* opcode ;
 int* opcode2 ;
 long long* rs1 ;
 long long* rs2 ;
 long long* rt1 ;
 long long* rt2 ;

void multdiv_assemble(int i,struct regstat *i_regs)
{
  if(opcode[i]==0) {
    if(opcode2[i]==7)
    {
      int s1=get_reg(i_regs->regmap,rs1[i]);
      int s2=get_reg(i_regs->regmap,rs2[i]);
      int t=get_reg(i_regs->regmap,MACL);
      if(t>=0) emit_multiply(s1,s2,t);
    }
    if(opcode2[i]==8)
    {
      int t1=get_reg(i_regs->regmap,rt1[i]);
      int t2=get_reg(i_regs->regmap,rt2[i]);
      if(!(i_regs->u&(1LL<<MACH)))
        emit_zeroreg(t1);
      if(!(i_regs->u&(1LL<<MACL)))
        emit_zeroreg(t2);
    }
    if(opcode2[i]==9)
    {
      int sr=get_reg(i_regs->regmap,SR);
      emit_andimm(sr,0xfe,sr);
    }
  }
  if(opcode[i]==2) {
    if(opcode2[i]==7)
    {
      int s1=get_reg(i_regs->regmap,rs1[i]);
      int s2=get_reg(i_regs->regmap,rs2[i]);
      int sr=get_reg(i_regs->regmap,SR);
      int temp=get_reg(i_regs->regmap,-1);
      assert(s1>=0);
      assert(s2>=0);
      assert(sr>=0);
      emit_div0s(s1,s2,sr,temp);
    }
    if(opcode2[i]==14||opcode2[i]==15)
    {
      int s1=get_reg(i_regs->regmap,rs1[i]);
      int s2=get_reg(i_regs->regmap,rs2[i]);
      int t=get_reg(i_regs->regmap,MACL);



      int temp=get_reg(i_regs->regmap,-1);

      if(t>=0) {
        assert(temp>=0);
        if(opcode2[i]==14) {
          emit_movzwl_reg(s1,t);
          emit_movzwl_reg(s2,temp);
        }else{
          emit_movswl_reg(s1,t);
          emit_movswl_reg(s2,temp);
        }
        emit_multiply(t,temp,t);
      }
    }
  }
  if(opcode[i]==3) {
    int s1=get_reg(i_regs->regmap,rs1[i]);
    int s2=get_reg(i_regs->regmap,rs2[i]);
    int th=get_reg(i_regs->regmap,MACH);
    int tl=get_reg(i_regs->regmap,MACL);
    if(th>=0) {


      assert(tl==EAX);
      assert(th==EDX);
      assert(s1!=EAX);
      if(s1!=EAX) emit_mov(s1,EAX);
      if(opcode2[i]==5) emit_mul(s2);
      if(opcode2[i]==13) emit_imul(s2);




    }else if(tl>=0) {

      emit_multiply(s1,s2,tl);
    }
  }
}
