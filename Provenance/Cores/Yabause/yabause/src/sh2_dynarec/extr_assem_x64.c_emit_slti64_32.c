
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int const_one ;
 int const_zero ;
 int emit_cmovl (int *,int) ;
 int emit_cmovne (int *,int) ;
 int emit_cmovs (int *,int) ;
 int emit_cmpimm (int,int) ;
 int emit_slti32 (int,int,int) ;
 int emit_test (int,int) ;

void emit_slti64_32(int rsh,int rsl,int imm,int rt)
{
  assert(rsh!=rt);
  emit_slti32(rsl,imm,rt);
  if(imm>=0)
  {
    emit_test(rsh,rsh);
    emit_cmovne(&const_zero,rt);
    emit_cmovs(&const_one,rt);
  }
  else
  {
    emit_cmpimm(rsh,-1);
    emit_cmovne(&const_zero,rt);
    emit_cmovl(&const_one,rt);
  }
}
