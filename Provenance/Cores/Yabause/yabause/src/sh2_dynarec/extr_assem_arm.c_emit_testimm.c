
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assem_debug (char*,int ,int) ;
 int genimm (int,int*) ;
 int output_w32 (int) ;
 int rd_rn_rm (int ,int,int ) ;
 int * regname ;

void emit_testimm(int rs,int imm)
{
  u32 armval;
  assem_debug("tst %s,#%d\n",regname[rs],imm);
  genimm(imm,&armval);
  output_w32(0xe3100000|rd_rn_rm(0,rs,0)|armval);
}
