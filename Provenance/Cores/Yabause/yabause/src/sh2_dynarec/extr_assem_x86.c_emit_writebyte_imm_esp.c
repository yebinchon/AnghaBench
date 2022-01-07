
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int) ;
 int assert (int) ;
 int output_byte (int) ;
 int output_modrm (int,int,int ) ;
 int output_sib (int ,int,int) ;

void emit_writebyte_imm_esp(int imm, int addr)
{
  assem_debug("movb $%x,%x(%%esp)\n",imm,addr);
  assert(addr>=-128&&addr<128);
  output_byte(0xC6);
  output_modrm(1,4,0);
  output_sib(0,4,4);
  output_byte(addr);
  output_byte(imm);
}
