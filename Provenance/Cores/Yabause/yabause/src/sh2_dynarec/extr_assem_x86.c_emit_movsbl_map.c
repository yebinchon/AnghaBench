
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int ,int ) ;
 int emit_movsbl (int,int) ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_sib (int,int,int) ;
 int output_w32 (int) ;
 int * regname ;

void emit_movsbl_map(int addr, int map, int rt)
{
  if(map<0) emit_movsbl(addr, rt);
  else
  {
    assem_debug("movsbl (%x,%%%s,4),%%%s\n",addr,regname[map],regname[rt]);
    output_byte(0x0F);
    output_byte(0xBE);
    output_modrm(0,4,rt);
    output_sib(2,map,5);
    output_w32(addr);
  }
}
