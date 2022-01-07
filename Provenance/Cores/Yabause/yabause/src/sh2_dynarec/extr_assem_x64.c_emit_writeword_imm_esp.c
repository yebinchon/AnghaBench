
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int) ;
 int assert (int) ;
 int output_byte (int) ;
 int output_modrm (int,int,int ) ;
 int output_sib (int ,int,int) ;
 int output_w32 (int) ;

void emit_writeword_imm_esp(int imm, int addr)
{
  assem_debug("mov $%x,%x(%%esp)\n",imm,addr);
  assert(addr>=-128&&addr<128);
  output_byte(0xC7);
  output_modrm(!!addr,4,0);
  output_sib(0,4,4);
  if(addr) output_byte(addr);
  output_w32(imm);
}
