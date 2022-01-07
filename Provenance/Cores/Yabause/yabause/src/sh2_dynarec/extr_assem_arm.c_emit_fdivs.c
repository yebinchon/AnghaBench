
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int,int) ;
 int output_w32 (int) ;

void emit_fdivs(int s1,int s2,int d)
{
  assem_debug("fdivs s%d,s%d,s%d\n",d,s1,s2);
  output_w32(0xee800a00|((d&14)<<11)|((d&1)<<22)|((s1&14)<<15)|((s1&1)<<7)|((s2&14)>>1)|((s2&1)<<5));
}
