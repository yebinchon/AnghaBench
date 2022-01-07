
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ) ;
 int assert (int) ;
 int output_w32 (int) ;
 int rd_rn_rm (unsigned int,unsigned int,int ) ;
 int * regname ;

void emit_addnop(unsigned int r)
{
  assert(r<16);
  assem_debug("add %s,%s,#0 (nop)\n",regname[r],regname[r]);
  output_w32(0xe2800000|rd_rn_rm(r,r,0));
}
