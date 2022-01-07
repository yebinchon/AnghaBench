
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ,int ,int ) ;
 int output_w32 (int) ;
 int rd_rn_rm (unsigned int,unsigned int,unsigned int) ;
 int * regname ;

void emit_bic_lsl(unsigned int rs1,unsigned int rs2,unsigned int shift,unsigned int rt)
{
  assem_debug("bic %s,%s,%s lsl %s\n",regname[rt],regname[rs1],regname[rs2],regname[shift]);
  output_w32(0xe1C00000|rd_rn_rm(rt,rs1,rs2)|0x10|(shift<<8));
}
