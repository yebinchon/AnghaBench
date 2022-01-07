
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ) ;
 int emit_mov (int,int) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int * regname ;

void emit_multiply(int rs1,int rs2,int rt)
{
  if(rs1==rt) {
    assem_debug("imul %%%s,%%%s\n",regname[rs2],regname[rt]);
    output_byte(0x0F);
    output_byte(0xAF);
    output_modrm(3,rs2,rt);
  }
  else
  {
    emit_mov(rs1,rt);
    emit_multiply(rt,rs2,rt);
  }
}
