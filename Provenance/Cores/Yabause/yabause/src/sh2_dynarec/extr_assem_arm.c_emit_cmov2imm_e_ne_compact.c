
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int add_literal (int,int) ;
 int assem_debug (char*,int,int,...) ;
 int emit_movimm (int,unsigned int) ;
 int emit_movt (int,unsigned int) ;
 int emit_movw (int,unsigned int) ;
 scalar_t__ genimm (int,int*) ;
 scalar_t__ out ;
 int output_w32 (int) ;
 int rd_rn_rm (unsigned int,int,int ) ;
 int* regname ;

void emit_cmov2imm_e_ne_compact(int imm1,int imm2,unsigned int rt)
{
  u32 armval;
  if(genimm(imm2-imm1,&armval)) {
    emit_movimm(imm1,rt);
    assem_debug("addne %s,%s,#%d\n",regname[rt],regname[rt],imm2-imm1);
    output_w32(0x12800000|rd_rn_rm(rt,rt,0)|armval);
  }else if(genimm(imm1-imm2,&armval)) {
    emit_movimm(imm1,rt);
    assem_debug("subne %s,%s,#%d\n",regname[rt],regname[rt],imm1-imm2);
    output_w32(0x12400000|rd_rn_rm(rt,rt,0)|armval);
  }
  else {

    emit_movimm(imm1,rt);
    add_literal((int)out,imm2);
    assem_debug("ldrne %s,pc+? [=%x]\n",regname[rt],imm2);
    output_w32(0x15900000|rd_rn_rm(rt,15,0));
  }
}
