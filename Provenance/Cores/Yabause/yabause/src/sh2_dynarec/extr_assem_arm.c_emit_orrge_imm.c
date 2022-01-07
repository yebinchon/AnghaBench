
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assem_debug (char*,int ,int ,int) ;
 int assert (int ) ;
 scalar_t__ genimm (int,int*) ;
 int output_w32 (int) ;
 int rd_rn_imm_shift (int,int,int,int) ;
 int rd_rn_rm (int,int,int ) ;
 int * regname ;

void emit_orrge_imm(int rs,int imm,int rt)
{
  u32 armval;
  if(genimm(imm,&armval)) {
    assem_debug("orrge %s,%s,#%d\n",regname[rt],regname[rs],imm);
    output_w32(0xa3800000|rd_rn_rm(rt,rs,0)|armval);
  }else{
    assert(0);
    assem_debug("orr %s,%s,#%d\n",regname[rt],regname[rs],imm&0xFF00);
    assem_debug("orr %s,%s,#%d\n",regname[rt],regname[rs],imm&0xFF);
    output_w32(0xe3800000|rd_rn_imm_shift(rt,rs,imm>>8,8));
    output_w32(0xe3800000|rd_rn_imm_shift(rt,rt,imm&0xff,0));
  }
}
