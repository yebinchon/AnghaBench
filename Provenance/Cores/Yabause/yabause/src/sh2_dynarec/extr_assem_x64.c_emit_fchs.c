
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*) ;
 int output_byte (int) ;

void emit_fchs()
{
  assem_debug("fchs\n");
  output_byte(0xd9);
  output_byte(0xe0);
}
