
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int) ;
 scalar_t__ out ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_rex (int ,int,int ,int ) ;
 int output_w32 (int) ;
 int ** regname ;

void emit_writebyte(int rt, int addr)
{
  assem_debug("movb %%%cl,%x\n",regname[rt][1],addr);
  if(rt>=4) output_rex(0,rt>>3,0,0);
  output_byte(0x88);
  output_modrm(0,5,rt);
  output_w32(addr-(int)out-4);
}
