
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int) ;
 int output_w32 (int) ;

void emit_fabsd(int s,int d)
{
  assem_debug("fabsd s%d,d%d\n",d,s);
  output_w32(0xeeb00bc0|((d&7)<<12)|(s&7));
}
