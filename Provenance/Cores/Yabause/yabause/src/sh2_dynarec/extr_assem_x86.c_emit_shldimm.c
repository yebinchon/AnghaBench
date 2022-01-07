
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ,unsigned int) ;
 int assert (int) ;
 int emit_mov (int,int) ;
 int output_byte (unsigned int) ;
 int output_modrm (int,int,int) ;
 int * regname ;

void emit_shldimm(int rs,int rs2,unsigned int imm,int rt)
{
  if(rs==rt) {
    assem_debug("shld %%%s,%%%s,%d\n",regname[rt],regname[rs2],imm);
    assert(imm>0);
    output_byte(0x0F);
    output_byte(0xA4);
    output_modrm(3,rt,rs2);
    output_byte(imm);
  }
  else {
    emit_mov(rs,rt);
    emit_shldimm(rt,rs2,imm,rt);
  }
}
