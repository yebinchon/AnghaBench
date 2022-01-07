
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int) ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_w32 (int) ;
 int * regname ;

void emit_writeword(int rt, int addr)
{
  assem_debug("movl %%%s,%x\n",regname[rt],addr);
  output_byte(0x89);
  output_modrm(0,5,rt);
  output_w32(addr);
}
