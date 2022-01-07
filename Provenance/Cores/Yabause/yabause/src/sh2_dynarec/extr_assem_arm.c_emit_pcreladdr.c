
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ) ;
 int output_w32 (int) ;
 int rd_rn_rm (unsigned int,int,int ) ;
 int * regname ;

void emit_pcreladdr(unsigned int rt)
{
  assem_debug("add %s,pc,#?\n",regname[rt]);
  output_w32(0xe2800000|rd_rn_rm(rt,15,0));
}
