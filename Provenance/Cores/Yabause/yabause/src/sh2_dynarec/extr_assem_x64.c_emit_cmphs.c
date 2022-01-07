
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_cmp (int,int) ;
 int emit_orimm (int,int,int) ;
 int emit_sbbimm (int ,int) ;

void emit_cmphs(int s1, int s2, int sr, int temp)
{
  emit_orimm(sr,1,sr);
  emit_cmp(s2,s1);
  emit_sbbimm(0,sr);
}
