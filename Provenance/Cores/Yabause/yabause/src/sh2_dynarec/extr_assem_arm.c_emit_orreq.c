
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ,int ) ;
 int output_w32 (int) ;
 int rd_rn_rm (unsigned int,unsigned int,unsigned int) ;
 int * regname ;

void emit_orreq(unsigned int rs1,unsigned int rs2,unsigned int rt)
{
  assem_debug("orreq %s,%s,%s\n",regname[rt],regname[rs1],regname[rs2]);
  output_w32(0x01800000|rd_rn_rm(rt,rs1,rs2));
}
