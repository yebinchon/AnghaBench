
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HOST_TEMPREG ;
 int assem_debug (char*,int,...) ;
 int assert (int) ;
 int emit_movw (int,int) ;
 int emit_zeroreg (int) ;
 scalar_t__ genimm (int,int*) ;
 int output_w32 (int) ;
 int rd_rn_imm_shift (int,int,int,int) ;
 int rd_rn_rm (int,int,int) ;
 int * regname ;

void emit_andimm(int rs,int imm,int rt)
{
  u32 armval;
  if(imm==0) {
    emit_zeroreg(rt);
  }else if(genimm(imm,&armval)) {
    assem_debug("and %s,%s,#%d\n",regname[rt],regname[rs],imm);
    output_w32(0xe2000000|rd_rn_rm(rt,rs,0)|armval);
  }else if(genimm(~imm,&armval)) {
    assem_debug("bic %s,%s,#%d\n",regname[rt],regname[rs],imm);
    output_w32(0xe3c00000|rd_rn_rm(rt,rs,0)|armval);
  }else if(imm==65535) {

    assem_debug("bic %s,%s,#FF000000\n",regname[rt],regname[rs]);
    output_w32(0xe3c00000|rd_rn_rm(rt,rs,0)|0x4FF);
    assem_debug("bic %s,%s,#00FF0000\n",regname[rt],regname[rt]);
    output_w32(0xe3c00000|rd_rn_rm(rt,rt,0)|0x8FF);




  }else{
    assert(imm>0&&imm<65535);

    assem_debug("mov r14,#%d\n",imm&0xFF00);
    output_w32(0xe3a00000|rd_rn_imm_shift(HOST_TEMPREG,0,imm>>8,8));
    assem_debug("add r14,r14,#%d\n",imm&0xFF);
    output_w32(0xe2800000|rd_rn_imm_shift(HOST_TEMPREG,HOST_TEMPREG,imm&0xff,0));



    assem_debug("and %s,%s,r14\n",regname[rt],regname[rs]);
    output_w32(0xe0000000|rd_rn_rm(rt,rs,HOST_TEMPREG));
  }
}
