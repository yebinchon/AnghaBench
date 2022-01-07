
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int,int) ;
 scalar_t__ out ;
 int output_byte (int) ;
 int output_w32 (int) ;

void emit_jmp(int a)
{
  assem_debug("jmp %x (%x+%x)\n",a,(int)out+5,a-(int)out-5);
  output_byte(0xe9);
  output_w32(a-(int)out-4);
}
