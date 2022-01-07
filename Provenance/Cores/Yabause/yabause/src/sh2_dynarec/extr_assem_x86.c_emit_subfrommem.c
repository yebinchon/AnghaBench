
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int) ;
 int assert (int) ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_w32 (int) ;
 int * regname ;

void emit_subfrommem(int addr,int r)
{
  assert(r>=0&&r<8);
  assem_debug("sub %%%s,%x\n",regname[r],addr);
  output_byte(0x29);
  output_modrm(0,5,r);
  output_w32((int)addr);
}
