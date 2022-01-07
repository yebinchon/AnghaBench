
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

void emit_writebyte(int rt, int addr)
{
  u32 offset = addr-(u32)&dynarec_local;
  assert(offset<4096);
  assem_debug("strb %s,fp+%d\n",regname[rt],offset);
  output_w32(0xe5c00000|rd_rn_rm(rt,FP,0)|offset);
}
