
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int * regname ;

void emit_setl(int rt)
{
  assem_debug("setl %%%s\n",regname[rt]);
  output_byte(0x0F);
  output_byte(0x9C);
  output_modrm(3,rt,2);
}
