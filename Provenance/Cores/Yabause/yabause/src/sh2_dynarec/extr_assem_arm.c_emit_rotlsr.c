
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_andimm (int,int,int) ;
 int emit_orrmi_imm (int,int,int) ;
 int emit_rotl (int) ;
 int emit_test (int,int) ;

void emit_rotlsr(int t, int sr)
{
  emit_andimm(sr,~1,sr);
  emit_test(t,t);
  emit_rotl(t);
  emit_orrmi_imm(sr,1,sr);
}
