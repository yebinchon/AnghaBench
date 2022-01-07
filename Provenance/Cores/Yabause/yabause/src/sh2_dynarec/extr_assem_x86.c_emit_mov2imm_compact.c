
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_addimm (unsigned int,int,unsigned int) ;
 int emit_movimm (int,unsigned int) ;

void emit_mov2imm_compact(int imm1,unsigned int rt1,int imm2,unsigned int rt2)
{
  emit_movimm(imm1,rt1);
  if(imm2-imm1<128&&imm2-imm1>=-128) emit_addimm(rt1,imm2-imm1,rt2);
  else emit_movimm(imm2,rt2);
}
