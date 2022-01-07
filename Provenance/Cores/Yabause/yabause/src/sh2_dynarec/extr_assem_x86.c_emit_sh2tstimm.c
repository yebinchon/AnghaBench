
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ) ;
 int assert (int) ;
 int emit_cmovne_reg (int,int) ;
 int emit_orimm (int,int,int) ;
 int emit_testimm (int,int) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int * regname ;

void emit_sh2tstimm(int s, int imm, int sr, int temp)
{
  assert(temp>=0);
  emit_orimm(sr,1,sr);
  emit_testimm(s,imm);

  assem_debug("lea -1(%%%s),%%%s\n",regname[sr],regname[temp]);
  output_byte(0x8D);
  output_modrm(1,sr,temp);
  output_byte(0xFF);
  emit_cmovne_reg(temp,sr);
}
