
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,unsigned int) ;
 int assert (int) ;
 int emit_mov (int,int) ;
 int output_byte (unsigned int) ;
 int output_modrm (int,int,int) ;
 int output_rex (int,int ,int ,int) ;
 int * regname ;

void emit_shlimm64(int rs,unsigned int imm,int rt)
{
  if(rs==rt) {
    assem_debug("shl %%%s,%d\n",regname[rt],imm);
    assert(imm>0);
    output_rex(1,0,0,rt>>3);
    if(imm==1) output_byte(0xD1);
    else output_byte(0xC1);
    output_modrm(3,rt,4);
    if(imm>1) output_byte(imm);
  }
  else {
    emit_mov(rs,rt);
    emit_shlimm64(rt,imm,rt);
  }
}
