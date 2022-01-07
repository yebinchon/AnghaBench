
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_andimm (int,int,int) ;
 int emit_orreq_imm (int,int,int) ;
 int emit_testimm (int,int) ;

void emit_cmppz(int s, int sr)
{
  emit_andimm(sr,~1,sr);
  emit_testimm(s,0x80000000);
  emit_orreq_imm(sr,1,sr);
}
