
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*) ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_sib (int ,int,int) ;

void emit_fnstcw_stack()
{
  assem_debug("fnstcw (%%esp)\n");
  output_byte(0xd9);
  output_modrm(0,4,7);
  output_sib(0,4,4);
}
