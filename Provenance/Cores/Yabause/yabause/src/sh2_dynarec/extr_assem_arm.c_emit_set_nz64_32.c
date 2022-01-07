
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_cmovne_imm (int,int) ;
 int emit_or_and_set_flags (int,int,int) ;

void emit_set_nz64_32(int rsh, int rsl, int rt)
{

  emit_or_and_set_flags(rsh,rsl,rt);
  emit_cmovne_imm(1,rt);
}
