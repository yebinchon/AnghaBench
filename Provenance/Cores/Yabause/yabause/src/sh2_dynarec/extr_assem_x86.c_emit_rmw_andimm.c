
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBP ;
 int ESP ;
 int assem_debug (char*,int,int ,...) ;
 int assert (int) ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_sib (int ,int,int) ;
 int * regname ;

void emit_rmw_andimm(int addr, int map, int imm)
{
  if(map<0) {
    assem_debug("andb $0x%x,(%%%s)\n",imm,regname[addr]);
    assert(addr!=ESP);
    output_byte(0x80);
    output_modrm(0,addr,4);
  }
  else
  {
    assem_debug("andb $0x%x,(%%%s,%%%s,1)\n",imm,regname[addr],regname[map]);
    assert(addr!=ESP);
    output_byte(0x80);
    output_modrm(0,4,4);
    if(addr!=EBP) {
      output_sib(0,map,addr);
    }
    else {
      assert(addr!=map);
      output_sib(0,addr,map);
    }
  }
  output_byte(imm);
}
