
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int) ;
 int output_byte (int) ;

void emit_fadd(int r)
{
  assem_debug("fadd st%d\n",r);
  output_byte(0xd8);
  output_byte(0xc0+r);
}
