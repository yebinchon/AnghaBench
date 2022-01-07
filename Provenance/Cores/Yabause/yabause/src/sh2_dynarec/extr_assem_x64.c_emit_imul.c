
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int * regname ;

void emit_imul(int rs)
{
  assem_debug("imul %%%s\n",regname[rs]);
  output_byte(0xF7);
  output_modrm(3,rs,5);
}
