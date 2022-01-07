
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CCREG ;
 int FP ;
 int assem_debug (char*,int ,int) ;
 int assert (int) ;
 int dynarec_local ;
 int master_cc ;
 scalar_t__ master_reg ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int ,int ) ;
 int * regname ;
 scalar_t__ slave ;
 int slave_cc ;
 scalar_t__ slave_reg ;

void emit_storereg(int r, int hr)
{
  int addr=(slave?(int)slave_reg:(int)master_reg)+(r<<2);
  if(r==CCREG) addr=slave?(int)&slave_cc:(int)&master_cc;
  u32 offset = addr-(u32)&dynarec_local;
  assert(offset<4096);
  assem_debug("str %s,fp+%d\n",regname[hr],offset);
  output_w32(0xe5800000|rd_rn_rm(hr,FP,0)|offset);
}
