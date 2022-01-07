
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int emit_addimm (int,int,int) ;
 int emit_cmovle_reg (int,int) ;
 int emit_orimm (int,int,int) ;
 int emit_test (int,int) ;

void emit_cmppl(int s, int sr, int temp)
{
  assert(temp>=0);
  emit_orimm(sr,1,sr);
  emit_addimm(sr,-1,temp);
  emit_test(s,s);
  emit_cmovle_reg(temp,sr);
}
