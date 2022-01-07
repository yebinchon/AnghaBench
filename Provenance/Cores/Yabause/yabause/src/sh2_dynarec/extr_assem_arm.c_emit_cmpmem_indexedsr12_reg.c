
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOST_TEMPREG ;
 int assem_debug (char*,int ,int ) ;
 int assert (int) ;
 int emit_cmpimm (int ,int) ;
 int output_w32 (int) ;
 int rd_rn_rm (int ,int,int) ;
 int * regname ;

void emit_cmpmem_indexedsr12_reg(int base,int r,int imm)
{
  assert(imm<128&&imm>=0);
  assert(r>=0&&r<16);
  assem_debug("ldrb lr,%s,%s lsr #12\n",regname[base],regname[r]);
  output_w32(0xe7d00000|rd_rn_rm(HOST_TEMPREG,base,r)|0x620);
  emit_cmpimm(HOST_TEMPREG,imm);
}
