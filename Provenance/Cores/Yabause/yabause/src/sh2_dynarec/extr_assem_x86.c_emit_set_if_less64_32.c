
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int const_one ;
 int emit_cmovl (int *,int) ;
 int emit_cmp (int,int) ;
 int emit_mov (int,int) ;
 int emit_movimm (int ,int) ;
 int emit_sbb (int,int) ;

void emit_set_if_less64_32(int u1, int l1, int u2, int l2, int rt)
{

  assert(u1!=rt);
  assert(u2!=rt);
  emit_cmp(l1,l2);
  emit_mov(u1,rt);
  emit_sbb(u2,rt);
  emit_movimm(0,rt);
  emit_cmovl(&const_one,rt);
}
