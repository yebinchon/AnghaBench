
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_adc (int,int) ;
 int emit_rotr (int) ;
 int emit_shrimm (int,int,int) ;

void emit_rotrsr(int t, int sr)
{
  emit_shrimm(sr,1,sr);
  emit_rotr(t);
  emit_adc(sr,sr);
}
