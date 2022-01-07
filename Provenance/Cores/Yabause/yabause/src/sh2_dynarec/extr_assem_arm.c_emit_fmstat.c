
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*) ;
 int output_w32 (int) ;

void emit_fmstat()
{
  assem_debug("fmstat\n");
  output_w32(0xeef1fa10);
}
