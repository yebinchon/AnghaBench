
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,unsigned int) ;
 int assert (int) ;
 int emit_mov (int,int) ;
 int output_byte (unsigned int) ;
 int output_modrm (int,int,int) ;
 int * regname ;

void emit_sarimm(int rs,unsigned int imm,int rt)
{
  if(rs==rt) {
    assem_debug("sar %%%s,%d\n",regname[rt],imm);
    assert(imm>0);
    if(imm==1) output_byte(0xD1);
    else output_byte(0xC1);
    output_modrm(3,rt,7);
    if(imm>1) output_byte(imm);
  }
  else {
    emit_mov(rs,rt);
    emit_sarimm(rt,imm,rt);
  }
}
