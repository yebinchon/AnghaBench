
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_andimm (int,int,int) ;
 int emit_cmpimm (int,int) ;
 int emit_orreq_imm (int,int,int) ;

void emit_cmpeqimm(int s, int imm, int sr, int temp)
{
  emit_andimm(sr,~1,sr);
  emit_cmpimm(s,imm);
  emit_orreq_imm(sr,1,sr);
}
