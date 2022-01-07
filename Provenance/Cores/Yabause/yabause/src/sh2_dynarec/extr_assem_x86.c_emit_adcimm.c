
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int ) ;
 int assert (int) ;
 int output_byte (int) ;
 int output_modrm (int,unsigned int,int) ;
 int output_w32 (int) ;
 int * regname ;

void emit_adcimm(int imm,unsigned int rt)
{
  assem_debug("adc $%d,%%%s\n",imm,regname[rt]);
  assert(rt<8);
  if(imm<128&&imm>=-128) {
    output_byte(0x83);
    output_modrm(3,rt,2);
    output_byte(imm);
  }
  else
  {
    output_byte(0x81);
    output_modrm(3,rt,2);
    output_w32(imm);
  }
}
