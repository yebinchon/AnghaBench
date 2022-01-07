
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ,unsigned int,...) ;
 int assert (int) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int,int) ;
 int * regname ;

void emit_shrdimm(int rs,int rs2,unsigned int imm,int rt)
{
  assem_debug("shrd %%%s,%%%s,%d\n",regname[rt],regname[rs2],imm);
  assert(imm>0);
  assert(imm<32);

  assem_debug("lsr %s,%s,#%d\n",regname[rt],regname[rs],imm);
  output_w32(0xe1a00020|rd_rn_rm(rt,0,rs)|(imm<<7));
  assem_debug("orr %s,%s,%s,lsl #%d\n",regname[rt],regname[rt],regname[rs2],32-imm);
  output_w32(0xe1800000|rd_rn_rm(rt,rt,rs2)|((32-imm)<<7));
}
