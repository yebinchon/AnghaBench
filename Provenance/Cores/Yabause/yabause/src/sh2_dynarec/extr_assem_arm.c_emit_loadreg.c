
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CCREG ;
 int FP ;
 int MMREG ;
 int assem_debug (char*,int ,int) ;
 int assert (int) ;
 int dynarec_local ;
 int emit_movimm (int,int) ;
 int master_cc ;
 scalar_t__ master_reg ;
 scalar_t__ memory_map ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int ,int ) ;
 int * regname ;
 scalar_t__ slave ;
 int slave_cc ;
 scalar_t__ slave_reg ;

void emit_loadreg(int r, int hr)
{
  if(r==MMREG)
    emit_movimm(((int)memory_map-(int)&dynarec_local)>>2,hr);
  else {
    int addr=(slave?(int)slave_reg:(int)master_reg)+(r<<2);
    if(r==CCREG) addr=slave?(int)&slave_cc:(int)&master_cc;
    u32 offset = addr-(u32)&dynarec_local;
    assert(offset<4096);
    assem_debug("ldr %s,fp+%d\n",regname[hr],offset);
    output_w32(0xe5900000|rd_rn_rm(hr,FP,0)|offset);
  }
}
