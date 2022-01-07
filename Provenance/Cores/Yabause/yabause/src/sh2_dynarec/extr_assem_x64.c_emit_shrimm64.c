
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,unsigned int) ;
 int assert (int) ;
 int emit_mov (int,int) ;
 int emit_shrimm (int,unsigned int,int) ;
 int output_byte (unsigned int) ;
 int output_modrm (int,int,int) ;
 int output_rex (int,int ,int ,int) ;
 int * regname ;

void emit_shrimm64(int rs,unsigned int imm,int rt)
{
  assert(rs==rt);
  if(rs==rt) {
    assem_debug("shr %%%s,%d\n",regname[rt],imm);
    assert(imm>0);
    output_rex(1,0,0,rt>>3);
    if(imm==1) output_byte(0xD1);
    else output_byte(0xC1);
    output_modrm(3,rt,5);
    if(imm>1) output_byte(imm);
  }
  else {
    emit_mov(rs,rt);
    emit_shrimm(rt,imm,rt);
  }
}
