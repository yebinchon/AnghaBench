
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EBP ;
 int assem_debug (char*,unsigned int,int ) ;
 int assert (int) ;
 int output_byte (int) ;
 int output_modrm (int,unsigned int,unsigned int) ;
 int * regname ;

void emit_movd_store(unsigned int ssereg,unsigned int addr)
{
  assem_debug("movd xmm%d,(%%%s)\n",ssereg,regname[addr]);
  assert(ssereg<8);
  output_byte(0x66);
  output_byte(0x0f);
  output_byte(0x7e);
  if(addr!=EBP) output_modrm(0,addr,ssereg);
  else {output_modrm(1,EBP,ssereg);output_byte(0);}
}
