
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int) ;
 int output_byte (int) ;

void emit_fsub(int r)
{
  assem_debug("fsub st%d\n",r);
  output_byte(0xd8);
  output_byte(0xe0+r);
}
