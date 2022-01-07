
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*) ;
 int output_w32 (int) ;

void emit_fcmpd(int x,int y)
{
  assem_debug("fcmpd d6, d7\n");
  output_w32(0xeeb46b47);
}
