
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,scalar_t__) ;
 int emit_mov (int,int) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 scalar_t__* regname ;

void emit_swapb(int rs,int rt)
{
  if(rs==rt) {
    assem_debug("ror %%%s,8\n",regname[rt]+1);
    output_byte(0x66);
    output_byte(0xC1);
    output_modrm(3,rt,1);
    output_byte(8);
  }
  else {
    emit_mov(rs,rt);
    emit_swapb(rt,rt);
  }
}
