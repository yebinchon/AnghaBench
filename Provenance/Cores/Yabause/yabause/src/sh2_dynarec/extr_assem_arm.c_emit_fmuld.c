
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int,int) ;
 int output_w32 (int) ;

void emit_fmuld(int s1,int s2,int d)
{
  assem_debug("fmuld d%d,d%d,d%d\n",d,s1,s2);
  output_w32(0xee200b00|((d&7)<<12)|((s1&7)<<16)|(s2&7));
}
