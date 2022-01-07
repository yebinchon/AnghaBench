
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int assem_debug (char*,int,int) ;
 int assert (int) ;
 int emit_movimm64 (int,int) ;
 scalar_t__ out ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_rex (int,int ,int ,int) ;
 int output_w32 (int) ;
 int* regname ;

void emit_movq(u64 addr, int rt)
{
  if(addr-(u64)out+0x7FFFFFFA>0xFFFFFFFF) {
    assert(addr-(u64)out+0x7FFFFFFA<0x100000000);

    emit_movimm64(addr,rt);

    assem_debug("mov (%%%s),%%%s\n",regname[rt],regname[rt]);
    output_byte(0x8B);
    output_modrm(0,rt,rt);
    output_byte(0xCC);
  }
  else
  {
    assem_debug("movq %llx,%%%s\n",addr,regname[rt]);
    output_rex(1,0,0,rt>>8);
    output_byte(0x8B);
    output_modrm(0,5,rt);
    output_w32(addr-(int)out-4);
  }
}
