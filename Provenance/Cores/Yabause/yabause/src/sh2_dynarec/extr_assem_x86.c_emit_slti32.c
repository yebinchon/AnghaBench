
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const_one ;
 int emit_cmovl (int *,int) ;
 int emit_cmpimm (int,int) ;
 int emit_movimm (int ,int) ;
 int emit_movzbl_reg (int,int) ;
 int emit_setl (int) ;
 int emit_zeroreg (int) ;

void emit_slti32(int rs,int imm,int rt)
{
  if(rs!=rt) emit_zeroreg(rt);
  emit_cmpimm(rs,imm);
  if(rt<4) {
    emit_setl(rt);
    if(rs==rt) emit_movzbl_reg(rt,rt);
  }
  else
  {
    if(rs==rt) emit_movimm(0,rt);
    emit_cmovl(&const_one,rt);
  }
}
