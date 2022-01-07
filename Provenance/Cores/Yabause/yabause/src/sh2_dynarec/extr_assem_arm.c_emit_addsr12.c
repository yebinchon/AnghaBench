
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ,int ) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int,int) ;
 int * regname ;

void emit_addsr12(int rs1,int rs2,int rt)
{
  assem_debug("add %s,%s,%s lsr #12\n",regname[rt],regname[rs1],regname[rs2]);
  output_w32(0xe0800620|rd_rn_rm(rt,rs1,rs2));
}
