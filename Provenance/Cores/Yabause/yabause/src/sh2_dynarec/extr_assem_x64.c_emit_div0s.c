
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ) ;
 int emit_adc (int,int) ;
 int emit_mov (int,int) ;
 int emit_shlimm (int,int,int) ;
 int emit_xor (int,int,int) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int * regname ;

void emit_div0s(int s1, int s2, int sr, int temp) {
  emit_shlimm(sr,24,sr);
  emit_mov(s2,temp);
  assem_debug("bt %%%s,31\n",regname[s2]);
  output_byte(0x0f);
  output_byte(0xba);
  output_modrm(3,s2,4);
  output_byte(0x1f);
  assem_debug("rcr %%%s\n",regname[sr]);
  output_byte(0xD1);
  output_modrm(3,sr,3);
  emit_xor(temp,s1,temp);
  assem_debug("bt %%%s,31\n",regname[s1]);
  output_byte(0x0f);
  output_byte(0xba);
  output_modrm(3,s1,4);
  output_byte(0x1f);
  assem_debug("rcr %%%s,24\n",regname[sr]);
  output_byte(0xc1);
  output_modrm(3,sr,3);
  output_byte(24);
  assem_debug("bt %%%s,31\n",regname[temp]);
  output_byte(0x0f);
  output_byte(0xba);
  output_modrm(3,temp,4);
  output_byte(0x1f);
  emit_adc(sr,sr);
}
