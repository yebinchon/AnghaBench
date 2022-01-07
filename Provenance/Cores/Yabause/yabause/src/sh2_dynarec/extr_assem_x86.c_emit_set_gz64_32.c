
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const_one ;
 int const_zero ;
 int emit_cmovne (int *,int) ;
 int emit_cmovs (int *,int) ;
 int emit_set_gz32 (int,int) ;
 int emit_test (int,int) ;

void emit_set_gz64_32(int rsh, int rsl, int rt)
{

  emit_set_gz32(rsl,rt);
  emit_test(rsh,rsh);
  emit_cmovne(&const_one,rt);
  emit_cmovs(&const_zero,rt);
}
