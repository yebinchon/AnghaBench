
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assem_debug (char*,int ,int ,int) ;
 int genimm (int,int*) ;
 int output_w32 (int) ;
 int rd_rn_rm (unsigned int,unsigned int,int ) ;
 int * regname ;

void emit_adcimm(unsigned int rs,int imm,unsigned int rt)
{
  u32 armval;
  genimm(imm,&armval);
  assem_debug("adc %s,%s,#%d\n",regname[rt],regname[rs],imm);
  output_w32(0xe2a00000|rd_rn_rm(rt,rs,0)|armval);
}
