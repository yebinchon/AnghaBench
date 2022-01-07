
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int ,unsigned int) ;
 int * regname ;

void emit_jmpreg(unsigned int r)
{
  assem_debug("mov pc,%s\n",regname[r]);
  output_w32(0xe1a00000|rd_rn_rm(15,0,r));
}
