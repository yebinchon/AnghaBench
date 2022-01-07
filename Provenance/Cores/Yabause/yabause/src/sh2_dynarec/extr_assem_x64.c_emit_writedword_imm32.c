
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int) ;
 scalar_t__ out ;
 int output_byte (int) ;
 int output_modrm (int ,int,int ) ;
 int output_rex (int,int ,int ,int ) ;
 int output_w32 (int) ;

void emit_writedword_imm32(int imm, int addr)
{
  assem_debug("movq $%x,%x\n",imm,addr);
  output_rex(1,0,0,0);
  output_byte(0xC7);
  output_modrm(0,5,0);
  output_w32(addr-(int)out-8);
  output_w32(imm);
}
