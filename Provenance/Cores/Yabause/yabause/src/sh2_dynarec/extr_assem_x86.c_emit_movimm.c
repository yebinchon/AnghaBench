
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int ) ;
 int assert (int) ;
 int output_byte (int) ;
 int output_w32 (int) ;
 int * regname ;

void emit_movimm(int imm,unsigned int rt)
{
  assem_debug("mov $%d,%%%s\n",imm,regname[rt]);
  assert(rt<8);
  output_byte(0xB8+rt);
  output_w32(imm);
}
