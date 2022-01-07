
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,scalar_t__,scalar_t__) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 scalar_t__* regname ;

void emit_movswl_reg(int rs, int rt)
{
  assem_debug("movswl %%%s,%%%s\n",regname[rs]+1,regname[rt]);
  output_byte(0x0F);
  output_byte(0xBF);
  output_modrm(3,rs,rt);
}
