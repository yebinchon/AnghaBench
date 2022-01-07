
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBP ;
 int assem_debug (char*,int,int ,int ,int ) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int output_sib (int ,int,int) ;
 int output_w32 (int) ;
 int * regname ;

void emit_leairrx1(int imm,int rs1,int rs2,int rt)
{
  assem_debug("lea %x(%%%s,%%%s,1),%%%s\n",imm,regname[rs1],regname[rs2],regname[rt]);
  output_byte(0x8D);
  if(imm!=0||rs1==EBP) {
    output_modrm(2,4,rt);
    output_sib(0,rs2,rs1);
    output_w32(imm);
  }else{
    output_modrm(0,4,rt);
    output_sib(0,rs2,rs1);
  }
}
