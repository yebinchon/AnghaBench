
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int) ;
 scalar_t__ out ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_w32 (int) ;

void emit_fldcw(int addr)
{
  assem_debug("fldcw %x\n",addr);
  output_byte(0xd9);
  output_modrm(0,5,5);
  output_w32(addr-(int)out-4);
}
