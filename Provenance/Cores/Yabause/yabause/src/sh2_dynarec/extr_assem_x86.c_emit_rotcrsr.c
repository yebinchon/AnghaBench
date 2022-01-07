
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ) ;
 int emit_adc (int,int) ;
 int emit_shrimm (int,int,int) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int * regname ;

void emit_rotcrsr(int t, int sr)
{
  emit_shrimm(sr,1,sr);
  assem_debug("rcr %%%s\n",regname[t]);
  output_byte(0xD1);
  output_modrm(3,t,3);
  emit_adc(sr,sr);
}
