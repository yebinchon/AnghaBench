
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBP ;
 int assem_debug (char*,int ,int ,...) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int output_sib (int,int,int) ;
 int output_w32 (int ) ;
 int * regname ;

void emit_add(int rs1,int rs2,int rt)
{
  if(rs1==rt) {
    assem_debug("add %%%s,%%%s\n",regname[rs2],regname[rs1]);
    output_byte(0x01);
    output_modrm(3,rs1,rs2);
  }else if(rs2==rt) {
    assem_debug("add %%%s,%%%s\n",regname[rs1],regname[rs2]);
    output_byte(0x01);
    output_modrm(3,rs2,rs1);
  }else {
    assem_debug("lea (%%%s,%%%s),%%%s\n",regname[rs1],regname[rs2],regname[rt]);
    output_byte(0x8D);
    if(rs1!=EBP) {
      output_modrm(0,4,rt);
      output_sib(0,rs2,rs1);
    }else if(rs2!=EBP) {
      output_modrm(0,4,rt);
      output_sib(0,rs1,rs2);
    }else {
      output_modrm(0,4,rt);
      output_sib(1,EBP,5);
      output_w32(0);
    }
  }
}
