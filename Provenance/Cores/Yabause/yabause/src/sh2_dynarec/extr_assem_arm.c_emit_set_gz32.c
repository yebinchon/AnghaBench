
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_cmovl_imm (int ,int) ;
 int emit_cmpimm (int,int) ;
 int emit_movimm (int,int) ;

void emit_set_gz32(int rs, int rt)
{

  emit_cmpimm(rs,1);
  emit_movimm(1,rt);
  emit_cmovl_imm(0,rt);
}
