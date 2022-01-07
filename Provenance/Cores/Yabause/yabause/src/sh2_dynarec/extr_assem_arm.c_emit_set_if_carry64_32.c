
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOST_TEMPREG ;
 int assert (int) ;
 int emit_cmovb_imm (int,int) ;
 int emit_cmp (int,int) ;
 int emit_movimm (int ,int) ;
 int emit_sbcs (int,int,int ) ;

void emit_set_if_carry64_32(int u1, int l1, int u2, int l2, int rt)
{

  assert(u1!=rt);
  assert(u2!=rt);
  emit_cmp(l1,l2);
  emit_movimm(0,rt);
  emit_sbcs(u1,u2,HOST_TEMPREG);
  emit_cmovb_imm(1,rt);
}
