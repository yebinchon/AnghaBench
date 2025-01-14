
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,scalar_t__,scalar_t__) ;
 int emit_andimm (int,int,int) ;
 int emit_mov (int,int) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 scalar_t__* regname ;

void emit_movzbl_reg(int rs, int rt)
{
  if(rs<4) {
    assem_debug("movzbl %%%s,%%%s\n",regname[rs]+1,regname[rt]);
    output_byte(0x0F);
    output_byte(0xB6);
    output_modrm(3,rs,rt);
  }
  else if(rt<4) {
    emit_mov(rs,rt);
    emit_movzbl_reg(rt,rt);
  }
  else {
    emit_andimm(rs,0xFF,rt);
  }
}
