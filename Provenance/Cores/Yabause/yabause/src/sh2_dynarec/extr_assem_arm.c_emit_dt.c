
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_addimm_and_set_flags (int,int) ;
 int emit_andimm (int,int,int) ;
 int emit_orreq_imm (int,int,int) ;

void emit_dt(int t, int sr)
{
  emit_andimm(sr,~1,sr);
  emit_addimm_and_set_flags(-1,t);
  emit_orreq_imm(sr,1,sr);
}
