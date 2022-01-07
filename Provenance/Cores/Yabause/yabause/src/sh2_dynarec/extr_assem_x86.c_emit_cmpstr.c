
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int emit_adc (int,int) ;
 int emit_adcimm (int,int) ;
 int emit_addimm_and_set_flags (int,int) ;
 int emit_andimm (int,int,int) ;
 int emit_mov (int,int) ;
 int emit_not (int,int) ;
 int emit_popreg (int) ;
 int emit_pushreg (int) ;
 int emit_shrimm (int,int,int) ;
 int emit_xor (int,int,int) ;

void emit_cmpstr(int s1, int s2, int sr, int temp)
{




  assert(temp>=0);
  emit_pushreg(s2);
  emit_xor(s1,s2,s2);
  emit_shrimm(sr,1,sr);
  emit_mov(s2,temp);
  emit_addimm_and_set_flags(0-0x01010101,temp);
  emit_adcimm(-1,temp);
  emit_not(s2,s2);
  emit_xor(temp,s2,temp);
  emit_andimm(temp,0x01010101,temp);
  emit_addimm_and_set_flags(-1,temp);
  emit_adc(sr,sr);
  emit_popreg(s2);
}
