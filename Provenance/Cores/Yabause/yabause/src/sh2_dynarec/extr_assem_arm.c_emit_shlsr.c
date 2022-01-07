
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_adcimm (int,int ,int) ;
 int emit_andimm (int,int,int) ;
 int emit_lsls_imm (int,int,int) ;

void emit_shlsr(int t, int sr)
{
  emit_andimm(sr,~1,sr);
  emit_lsls_imm(t,1,t);
  emit_adcimm(sr,0,sr);
}
