
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int) ;
 int assert (int) ;
 scalar_t__ out ;
 int output_byte (int) ;
 int output_modrm (int ,int,int ) ;
 int output_w32 (int) ;

void emit_writebyte_imm(int imm, int addr)
{
  assem_debug("movb $%x,%x\n",imm,addr);
  assert(imm>=-128&&imm<128);
  output_byte(0xC6);
  output_modrm(0,5,0);
  output_w32(addr-(int)out-5);
  output_byte(imm);
}
