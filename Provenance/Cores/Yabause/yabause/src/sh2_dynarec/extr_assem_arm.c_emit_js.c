
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assem_debug (char*,int) ;
 int genjmp (int) ;
 int output_w32 (int) ;

void emit_js(int a)
{
  assem_debug("bmi %x\n",a);
  u32 offset=genjmp(a);
  output_w32(0x4a000000|offset);
}
