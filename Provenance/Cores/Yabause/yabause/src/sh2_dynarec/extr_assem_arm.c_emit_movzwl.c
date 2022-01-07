
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FP ;
 int assem_debug (char*,int ,int) ;
 int assert (int) ;
 int dynarec_local ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int ,int ) ;
 int * regname ;

void emit_movzwl(int addr, int rt)
{
  u32 offset = addr-(u32)&dynarec_local;
  assert(offset<256);
  assem_debug("ldrh %s,fp+%d\n",regname[rt],offset);
  output_w32(0xe1d000b0|rd_rn_rm(rt,FP,0)|((offset<<4)&0xf00)|(offset&0xf));
}
