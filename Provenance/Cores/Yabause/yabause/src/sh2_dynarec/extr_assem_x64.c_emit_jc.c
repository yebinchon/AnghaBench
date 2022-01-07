
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int) ;
 scalar_t__ out ;
 int output_byte (int) ;
 int output_w32 (int) ;

void emit_jc(int a)
{
  assem_debug("jc %x\n",a);
  output_byte(0x0f);
  output_byte(0x82);
  output_w32(a-(int)out-4);
}
