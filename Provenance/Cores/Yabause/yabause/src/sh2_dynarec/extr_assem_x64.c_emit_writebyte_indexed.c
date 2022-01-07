
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int,int *) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int output_rex (int ,int,int ,int) ;
 int output_w32 (int) ;
 int ** regname ;

void emit_writebyte_indexed(int rt, int addr, int rs)
{
  assem_debug("movb %%%cl,%x+%%%s\n",regname[rt][1],addr,regname[rs]);
  if(rt>=4||rs>=8) output_rex(0,rt>>3,0,rs>>3);
  output_byte(0x88);
  if(addr<128&&addr>=-128) {
    output_modrm(1,rs,rt);
    output_byte(addr);
  }
  else
  {
    output_modrm(2,rs,rt);
    output_w32(addr);
  }
}
