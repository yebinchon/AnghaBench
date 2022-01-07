
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assem_debug (char*,int ,int ,int) ;
 int assert (int) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int,int ) ;
 int * regname ;

void emit_ldreq_indexed(int rs, u32 offset, int rt)
{
  assert(offset<4096);
  assem_debug("ldreq %s,[%s, #%d]\n",regname[rt],regname[rs],offset);
  output_w32(0x05900000|rd_rn_rm(rt,rs,0)|offset);
}
