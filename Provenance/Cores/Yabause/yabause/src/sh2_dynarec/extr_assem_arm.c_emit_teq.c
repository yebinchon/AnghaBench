
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ) ;
 int output_w32 (int) ;
 int rd_rn_rm (int ,int,int) ;
 int * regname ;

void emit_teq(int rs, int rt)
{
  assem_debug("teq %s,%s\n",regname[rs],regname[rt]);
  output_w32(0xe1300000|rd_rn_rm(0,rs,rt));
}
