
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int ,int ) ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_rex (int,int ,int ,int) ;
 int output_sib (int,int,int) ;
 int output_w32 (int) ;
 int * regname ;

void emit_movmem_indexedx8_64(int addr, int rs, int rt)
{
  assem_debug("mov (%x,%%%s,8),%%%s\n",addr,regname[rs],regname[rt]);
  output_rex(1,0,0,rt>>3);
  output_byte(0x8B);
  output_modrm(0,4,rt);
  output_sib(3,rs,5);
  output_w32(addr);
}
