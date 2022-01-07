
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int ) ;
 int output_w32 (int) ;
 int * regname ;

void emit_vstr(int vr,int r)
{
  assem_debug("vstr d%d,[%s]\n",vr,regname[r]);
  output_w32(0xed800b00|(vr<<12)|(r<<16));
}
