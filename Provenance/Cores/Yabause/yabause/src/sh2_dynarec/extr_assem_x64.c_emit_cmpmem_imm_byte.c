
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pointer ;


 int assem_debug (char*,int,int ) ;
 int assert (int) ;
 scalar_t__ out ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_w32 (scalar_t__) ;

void emit_cmpmem_imm_byte(pointer addr,int imm)
{
  assert(imm<128&&imm>=-127);
  assem_debug("cmpb $%d,%x\n",imm,addr);
  output_byte(0x80);
  output_modrm(0,5,7);
  output_w32(addr-(int)out-5);
  output_byte(imm);
}
