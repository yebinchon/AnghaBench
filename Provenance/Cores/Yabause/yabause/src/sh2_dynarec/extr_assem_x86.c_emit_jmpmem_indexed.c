
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assem_debug (char*,int ,int ) ;
 int assert (int) ;
 int output_byte (int) ;
 int output_modrm (int,unsigned int,int) ;
 int output_w32 (int ) ;
 int * regname ;

void emit_jmpmem_indexed(u32 addr,unsigned int r)
{
  assem_debug("jmp *%x(%%%s)\n",addr,regname[r]);
  assert(r<8);
  output_byte(0xFF);
  output_modrm(2,r,4);
  output_w32(addr);
}
