
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_cmovne_imm (int,int) ;
 int emit_movs (int,int) ;
 int emit_test (int,int) ;

void emit_set_nz32(int rs, int rt)
{

  if(rs!=rt) emit_movs(rs,rt);
  else emit_test(rs,rs);
  emit_cmovne_imm(1,rt);
}
