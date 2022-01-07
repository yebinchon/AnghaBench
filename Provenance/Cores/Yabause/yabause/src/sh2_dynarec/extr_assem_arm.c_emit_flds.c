
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int ) ;
 int output_w32 (int) ;
 int * regname ;

void emit_flds(int r,int sr)
{
  assem_debug("flds s%d,[%s]\n",sr,regname[r]);
  output_w32(0xed900a00|((sr&14)<<11)|((sr&1)<<22)|(r<<16));
}
