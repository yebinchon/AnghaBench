
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int ) ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_sib (int,int,int) ;
 int output_w32 (int) ;
 int * regname ;

void emit_fldcw_indexed(int addr,int r)
{
  assem_debug("fldcw %x(%%%s)\n",addr,regname[r]);
  output_byte(0xd9);
  output_modrm(0,4,5);
  output_sib(1,r,5);
  output_w32(addr);
}
