
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EBP ;
 int assem_debug (char*,int ,unsigned int) ;
 int assert (int) ;
 int output_byte (int) ;
 int output_modrm (int,unsigned int,unsigned int) ;
 int * regname ;

void emit_movsd_load(unsigned int addr,unsigned int ssereg)
{
  assem_debug("movsd (%%%s),xmm%d\n",regname[addr],ssereg);
  assert(ssereg<8);
  output_byte(0xf2);
  output_byte(0x0f);
  output_byte(0x10);
  if(addr!=EBP) output_modrm(0,addr,ssereg);
  else {output_modrm(1,EBP,ssereg);output_byte(0);}
}
