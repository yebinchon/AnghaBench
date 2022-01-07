
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBP ;
 int ESP ;
 int assem_debug (char*,int,int ,int ,int ) ;
 int assert (int) ;
 int emit_readword_indexed (int,int,int) ;
 int output_byte (int) ;
 int output_modrm (int,int,int) ;
 int output_sib (int,int,int) ;
 int output_w32 (int) ;
 int * regname ;

void emit_readword_indexed_map(int addr, int rs, int map, int rt)
{
  assert(map>=0);
  if(map<0) emit_readword_indexed(addr, rs, rt);
  else {

    assem_debug("mov %x(%%%s,%%%s,4),%%%s\n",addr,regname[rs],regname[map],regname[rt]);
    assert(rs!=ESP);

    output_byte(0x8B);
    if(addr==0&&rs!=EBP) {
      output_modrm(0,4,rt);
      output_sib(2,map,rs);
    }
    else if(addr<128&&addr>=-128) {
      output_modrm(1,4,rt);
      output_sib(2,map,rs);
      output_byte(addr);
    }
    else
    {
      output_modrm(2,4,rt);
      output_sib(2,map,rs);
      output_w32(addr);
    }
  }
}
