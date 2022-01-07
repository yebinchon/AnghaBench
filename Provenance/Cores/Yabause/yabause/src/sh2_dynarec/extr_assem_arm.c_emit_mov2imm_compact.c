
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assem_debug (char*,int ,int ,int) ;
 int emit_movimm (int,unsigned int) ;
 scalar_t__ genimm (int,int*) ;
 int output_w32 (int) ;
 int rd_rn_rm (unsigned int,unsigned int,int ) ;
 int * regname ;

void emit_mov2imm_compact(int imm1,unsigned int rt1,int imm2,unsigned int rt2)
{
  emit_movimm(imm1,rt1);
  u32 armval;
  if(genimm(imm2-imm1,&armval)) {
    assem_debug("add %s,%s,#%d\n",regname[rt2],regname[rt1],imm2-imm1);
    output_w32(0xe2800000|rd_rn_rm(rt2,rt1,0)|armval);
  }else if(genimm(imm1-imm2,&armval)) {
    assem_debug("sub %s,%s,#%d\n",regname[rt2],regname[rt1],imm1-imm2);
    output_w32(0xe2400000|rd_rn_rm(rt2,rt1,0)|armval);
  }
  else emit_movimm(imm2,rt2);
}
