
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int add_literal (int,int ) ;
 int assem_debug (char*,int ,int ) ;
 scalar_t__ out ;
 int output_w32 (int) ;
 int rd_rn_rm (unsigned int,int,int ) ;
 int * regname ;

void emit_loadlp(u32 imm,unsigned int rt)
{
  add_literal((int)out,imm);
  assem_debug("ldr %s,pc+? [=%x]\n",regname[rt],imm);
  output_w32(0xe5900000|rd_rn_rm(rt,15,0));
}
