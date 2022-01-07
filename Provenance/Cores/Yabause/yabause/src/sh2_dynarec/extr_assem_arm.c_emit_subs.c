
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ,int ) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int,int) ;
 int * regname ;

void emit_subs(int rs1,int rs2,int rt)
{
  assem_debug("subs %s,%s,%s\n",regname[rt],regname[rs1],regname[rs2]);
  output_w32(0xe0500000|rd_rn_rm(rt,rs1,rs2));
}
