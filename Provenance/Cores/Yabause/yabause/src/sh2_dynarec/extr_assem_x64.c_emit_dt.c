
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_adc (int,int) ;
 int emit_addimm (int,int,int) ;
 int emit_shrimm (int,int,int) ;

void emit_dt(int t, int sr)
{
  emit_addimm(t,-2,t);
  emit_shrimm(sr,1,sr);
  emit_addimm(t,1,t);
  emit_adc(sr,sr);
}
