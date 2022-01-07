
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ) ;
 int output_w32 (int) ;
 int rd_rn_rm (int ,int,int ) ;
 int * regname ;

void emit_prefetchreg(int r)
{
  assem_debug("pld %s\n",regname[r]);
  output_w32(0xf5d0f000|rd_rn_rm(0,r,0));
}
