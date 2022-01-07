
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCREG ;
 int assem_debug (char*,int,int,int ) ;
 int master_cc ;
 scalar_t__ master_reg ;
 scalar_t__ out ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_w32 (int) ;
 int * regname ;
 scalar_t__ slave ;
 int slave_cc ;
 scalar_t__ slave_reg ;

void emit_loadreg(int r, int hr)
{
  int addr=(slave?(int)slave_reg:(int)master_reg)+(r<<2);
  if(r==CCREG) addr=slave?(int)&slave_cc:(int)&master_cc;
  assem_debug("mov %x+%d,%%%s\n",addr,r,regname[hr]);
  output_byte(0x8B);
  output_modrm(0,5,hr);
  output_w32(addr-(int)out-4);
}
