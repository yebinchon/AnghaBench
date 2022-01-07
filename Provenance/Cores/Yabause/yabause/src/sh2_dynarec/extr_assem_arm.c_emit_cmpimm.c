
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HOST_TEMPREG ;
 int assem_debug (char*,int ,...) ;
 int assert (int) ;
 int emit_movimm (int,int ) ;
 int emit_movw (int,int ) ;
 scalar_t__ genimm (int,int*) ;
 int output_w32 (int) ;
 int rd_rn_rm (int ,int,int ) ;
 int * regname ;

void emit_cmpimm(int rs,int imm)
{
  u32 armval;
  if(genimm(imm,&armval)) {
    assem_debug("cmp %s,#%d\n",regname[rs],imm);
    output_w32(0xe3500000|rd_rn_rm(0,rs,0)|armval);
  }else if(genimm(-imm,&armval)) {
    assem_debug("cmn %s,#%d\n",regname[rs],imm);
    output_w32(0xe3700000|rd_rn_rm(0,rs,0)|armval);
  }else if(imm>0) {
    assert(imm<65536);

    emit_movimm(imm,HOST_TEMPREG);



    assem_debug("cmp %s,r14\n",regname[rs]);
    output_w32(0xe1500000|rd_rn_rm(0,rs,HOST_TEMPREG));
  }else{
    assert(imm>-65536);

    emit_movimm(-imm,HOST_TEMPREG);



    assem_debug("cmn %s,r14\n",regname[rs]);
    output_w32(0xe1700000|rd_rn_rm(0,rs,HOST_TEMPREG));
  }
}
