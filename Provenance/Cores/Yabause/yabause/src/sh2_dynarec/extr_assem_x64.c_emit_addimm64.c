
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int ,...) ;
 int emit_mov (int,int) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int output_rex (int,int,int ,int) ;
 int output_w32 (int) ;
 int * regname ;

void emit_addimm64(int rs,int imm,int rt)
{
  if(rs==rt) {
    if(imm!=0) {
      assem_debug("add $%d,%%%s\n",imm,regname[rt]);
      if(imm<128&&imm>=-128) {
        output_rex(1,0,0,rt>>3);
        output_byte(0x83);
        output_modrm(3,rt&7,0);
        output_byte(imm);
      }
      else
      {
        output_rex(1,0,0,rt>>3);
        output_byte(0x81);
        output_modrm(3,rt&7,0);
        output_w32(imm);
      }
    }
  }
  else {
    if(imm!=0) {
      assem_debug("lea %d(%%%s),%%%s\n",imm,regname[rs],regname[rt]);
      output_rex(1,rt>>3,0,rs>>3);
      output_byte(0x8D);
      if(imm<128&&imm>=-128) {
        output_modrm(1,rs&7,rt&7);
        output_byte(imm);
      }else{
        output_modrm(2,rs&7,rt&7);
        output_w32(imm);
      }
    }else{
      emit_mov(rs,rt);
    }
  }
}
