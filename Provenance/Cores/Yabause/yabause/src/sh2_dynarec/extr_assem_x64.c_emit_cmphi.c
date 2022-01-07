
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_adcimm (int ,int) ;
 int emit_andimm (int,int,int) ;
 int emit_cmp (int,int) ;

void emit_cmphi(int s1, int s2, int sr, int temp)
{
  emit_andimm(sr,~1,sr);
  emit_cmp(s1,s2);
  emit_adcimm(0,sr);
}
