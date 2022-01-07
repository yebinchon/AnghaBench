
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int * regname ;

void emit_shlcl(int r)
{
  assem_debug("shl %%%s,%%cl\n",regname[r]);
  output_byte(0xD3);
  output_modrm(3,r,4);
}
