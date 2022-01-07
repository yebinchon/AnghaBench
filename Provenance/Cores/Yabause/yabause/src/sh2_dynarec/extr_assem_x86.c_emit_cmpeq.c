
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int emit_addimm (int,int,int) ;
 int emit_cmovne_reg (int,int) ;
 int emit_cmp (int,int) ;
 int emit_orimm (int,int,int) ;

void emit_cmpeq(int s1, int s2, int sr, int temp)
{
  assert(temp>=0);
  emit_orimm(sr,1,sr);
  emit_addimm(sr,-1,temp);
  emit_cmp(s1,s2);
  emit_cmovne_reg(temp,sr);
}
