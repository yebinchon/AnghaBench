
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ,int ,int ) ;
 int assert (int) ;
 int output_w32 (int) ;
 int * regname ;

void emit_umull(unsigned int rs1, unsigned int rs2, unsigned int hi, unsigned int lo)
{
  assem_debug("umull %s, %s, %s, %s\n",regname[lo],regname[hi],regname[rs1],regname[rs2]);
  assert(rs1<16);
  assert(rs2<16);
  assert(hi<16);
  assert(lo<16);
  assert(hi!=rs1&&hi!=rs2);
  assert(lo!=rs1&&lo!=rs2);
  output_w32(0xe0800090|(hi<<16)|(lo<<12)|(rs2<<8)|rs1);
}
