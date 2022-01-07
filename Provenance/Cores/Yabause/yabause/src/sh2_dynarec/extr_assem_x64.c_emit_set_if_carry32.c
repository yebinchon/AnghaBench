
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_adcimm (int ,int) ;
 int emit_cmp (int,int) ;
 int emit_movimm (int ,int) ;
 int emit_zeroreg (int) ;

void emit_set_if_carry32(int rs1, int rs2, int rt)
{

  if(rs1!=rt&&rs2!=rt) emit_zeroreg(rt);
  emit_cmp(rs1,rs2);
  if(rs1==rt||rs2==rt) emit_movimm(0,rt);
  emit_adcimm(0,rt);
}
