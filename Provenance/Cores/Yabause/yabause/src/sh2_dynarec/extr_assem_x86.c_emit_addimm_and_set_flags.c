
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int ) ;
 int output_byte (int) ;
 int output_modrm (int,int,int ) ;
 int output_w32 (int) ;
 int * regname ;

void emit_addimm_and_set_flags(int imm,int rt)
{
  assem_debug("add $%d,%%%s\n",imm,regname[rt]);
  if(imm<128&&imm>=-128) {
    output_byte(0x83);
    output_modrm(3,rt,0);
    output_byte(imm);
  }
  else
  {
    output_byte(0x81);
    output_modrm(3,rt,0);
    output_w32(imm);
  }
}
