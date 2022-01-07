
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assem_debug (char*,int ,int) ;
 int genimm (int,int*) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int ,int ) ;
 int * regname ;

void emit_cmovne_imm(int imm,int rt)
{
  assem_debug("movne %s,#%d\n",regname[rt],imm);
  u32 armval;
  genimm(imm,&armval);
  output_w32(0x13a00000|rd_rn_rm(rt,0,0)|armval);
}
