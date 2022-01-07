
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ,int ) ;
 int assert (int) ;
 int output_w32 (int) ;
 int rd_rn_rm (unsigned int,int ,unsigned int) ;
 int * regname ;

void emit_shr(unsigned int rs,unsigned int shift,unsigned int rt)
{
  assert(rs<16);
  assert(rt<16);
  assert(shift<16);
  assem_debug("lsr %s,%s,%s\n",regname[rt],regname[rs],regname[shift]);
  output_w32(0xe1a00000|rd_rn_rm(rt,0,rs)|0x30|(shift<<8));
}
