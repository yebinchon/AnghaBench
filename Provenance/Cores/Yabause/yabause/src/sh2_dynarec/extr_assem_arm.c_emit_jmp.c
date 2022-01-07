
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assem_debug (char*,int,int,int) ;
 int genjmp (int) ;
 scalar_t__ out ;
 int output_w32 (int) ;

void emit_jmp(int a)
{
  assem_debug("b %x (%x+%x)\n",a,(int)out,a-(int)out-8);
  u32 offset=genjmp(a);
  output_w32(0xea000000|offset);
}
