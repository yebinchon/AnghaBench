
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ) ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_sib (int,int,int) ;
 int output_w32 (int ) ;
 int * regname ;

void emit_lea8(int rs1,int rt)
{
  assem_debug("lea 0(%%%s,8),%%%s\n",regname[rs1],regname[rt]);
  output_byte(0x8D);
  output_modrm(0,4,rt);
  output_sib(3,rs1,5);
  output_w32(0);
}
