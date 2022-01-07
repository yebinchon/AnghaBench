
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,unsigned int) ;
 int assert (int) ;
 int output_byte (int) ;

void emit_fucomip(unsigned int r)
{
  assem_debug("fucomip %d\n",r);
  assert(r<8);
  output_byte(0xdf);
  output_byte(0xe8+r);
}
