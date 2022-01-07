
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ) ;
 int assert (int) ;
 int output_byte (int) ;
 int output_modrm (int,unsigned int,int) ;
 int * regname ;

void emit_jmpreg(unsigned int r)
{
  assem_debug("jmp *%%%s\n",regname[r]);
  assert(r<8);
  output_byte(0xFF);
  output_modrm(3,r,4);
}
