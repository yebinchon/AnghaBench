
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int ) ;
 scalar_t__ out ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_w32 (int) ;
 int * regname ;

void emit_movzbl(int addr, int rt)
{
  assem_debug("movzbl %x,%%%s\n",addr,regname[rt]);
  output_byte(0x0F);
  output_byte(0xB6);
  output_modrm(0,5,rt);
  output_w32(addr-(int)out-4);
}
