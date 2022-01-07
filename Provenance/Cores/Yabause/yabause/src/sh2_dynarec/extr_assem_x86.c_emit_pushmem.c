
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int) ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_w32 (int) ;

void emit_pushmem(int addr)
{
  assem_debug("push *%x\n",addr);
  output_byte(0xFF);
  output_modrm(0,5,6);
  output_w32(addr);
}
