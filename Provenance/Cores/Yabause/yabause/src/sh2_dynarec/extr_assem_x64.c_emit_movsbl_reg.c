
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,scalar_t__,scalar_t__) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int output_rex (int ,int,int ,int) ;
 scalar_t__* regname ;

void emit_movsbl_reg(int rs, int rt)
{
  if(rs<4&&rt<8) {
    assem_debug("movsbl %%%s,%%%s\n",regname[rs]+1,regname[rt]);
    output_byte(0x0F);
    output_byte(0xBE);
    output_modrm(3,rs,rt);
  }
  else {
    assem_debug("movsbl %%%s,%%%s\n",regname[rs]+1,regname[rt]);
    output_rex(0,rt>>3,0,rs>>3);
    output_byte(0x0F);
    output_byte(0xBE);
    output_modrm(3,rs,rt);
  }
}
