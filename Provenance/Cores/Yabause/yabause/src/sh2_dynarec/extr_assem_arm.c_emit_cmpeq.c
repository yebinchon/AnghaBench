
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_andimm (int,int,int) ;
 int emit_cmp (int,int) ;
 int emit_orreq_imm (int,int,int) ;

void emit_cmpeq(int s1, int s2, int sr, int temp)
{
  emit_andimm(sr,~1,sr);
  emit_cmp(s1,s2);
  emit_orreq_imm(sr,1,sr);
}
