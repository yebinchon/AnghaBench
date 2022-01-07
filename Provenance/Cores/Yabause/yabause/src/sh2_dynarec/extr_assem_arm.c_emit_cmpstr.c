
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_andimm (int,int,int) ;
 int emit_orreq_imm (int,int,int) ;
 int emit_testimm (int,int) ;
 int emit_xor (int,int,int) ;

void emit_cmpstr(int s1, int s2, int sr, int temp)
{


  emit_xor(s1,s2,14);
  emit_andimm(sr,~1,sr);
  emit_testimm(14,0xFF);
  emit_orreq_imm(sr,1,sr);
  emit_testimm(14,0xFF00);
  emit_orreq_imm(sr,1,sr);
  emit_testimm(14,0xFF0000);
  emit_orreq_imm(sr,1,sr);
  emit_testimm(14,0xFF000000);
  emit_orreq_imm(sr,1,sr);
}
