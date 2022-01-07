
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assem_debug (char*,int ,int,...) ;
 int emit_loadlp (int,unsigned int) ;
 int emit_movt (int,unsigned int) ;
 int emit_movw (int,unsigned int) ;
 scalar_t__ genimm (int,int*) ;
 int output_w32 (int) ;
 int rd_rn_imm_shift (unsigned int,unsigned int,int,int) ;
 int rd_rn_rm (unsigned int,int ,int ) ;
 int * regname ;

void emit_movimm(u32 imm,unsigned int rt)
{
  u32 armval;
  if(genimm(imm,&armval)) {
    assem_debug("mov %s,#%d\n",regname[rt],imm);
    output_w32(0xe3a00000|rd_rn_rm(rt,0,0)|armval);
  }else if(genimm(~imm,&armval)) {
    assem_debug("mvn %s,#%d\n",regname[rt],imm);
    output_w32(0xe3e00000|rd_rn_rm(rt,0,0)|armval);
  }else if(imm<65536) {

    assem_debug("mov %s,#%d\n",regname[rt],imm&0xFF00);
    output_w32(0xe3a00000|rd_rn_imm_shift(rt,0,imm>>8,8));
    assem_debug("add %s,%s,#%d\n",regname[rt],regname[rt],imm&0xFF);
    output_w32(0xe2800000|rd_rn_imm_shift(rt,rt,imm&0xff,0));



  }else{

    emit_loadlp(imm,rt);




  }
}
