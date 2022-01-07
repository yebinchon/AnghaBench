
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_adc (int,int) ;
 int emit_sarimm (int,int,int) ;
 int emit_shrimm (int,int,int) ;

void emit_sarsr(int t, int sr)
{
  emit_shrimm(sr,1,sr);
  emit_sarimm(t,1,t);
  emit_adc(sr,sr);
}
