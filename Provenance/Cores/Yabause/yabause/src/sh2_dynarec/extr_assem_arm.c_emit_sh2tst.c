
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_andimm (int,int,int) ;
 int emit_orreq_imm (int,int,int) ;
 int emit_test (int,int) ;

void emit_sh2tst(int s1, int s2, int sr, int temp)
{
  emit_andimm(sr,~1,sr);
  emit_test(s1,s2);
  emit_orreq_imm(sr,1,sr);
}
