
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int assem_debug (char*,int ,int ) ;
 int assert (int) ;
 int output_byte (int) ;
 int output_rex (int,int ,int ,unsigned int) ;
 int output_w64 (int ) ;
 int * regname ;

void emit_movimm64(u64 imm,unsigned int rt)
{
  assem_debug("movq $0x%llx,%%%s\n",imm,regname[rt]);
  assert(rt<16);
  output_rex(1,0,0,rt>>3);
  output_byte(0xB8+(rt&7));
  output_w64(imm);
}
