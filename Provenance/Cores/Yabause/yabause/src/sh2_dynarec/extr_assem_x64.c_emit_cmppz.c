
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_adc (int,int) ;
 int emit_cmpimm (int,int) ;
 int emit_shrimm (int,int,int) ;

void emit_cmppz(int s, int sr)
{
  emit_shrimm(sr,1,sr);
  emit_cmpimm(s,0x80000000);
  emit_adc(sr,sr);
}
