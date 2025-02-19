
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ,unsigned int) ;
 int assert (int) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int ,int) ;
 int * regname ;

void emit_rorimm(int rs,unsigned int imm,int rt)
{
  assert(imm>0);
  assert(imm<32);
  assem_debug("ror %s,%s,#%d\n",regname[rt],regname[rs],imm);
  output_w32(0xe1a00000|rd_rn_rm(rt,0,rs)|0x60|(imm<<7));
}
