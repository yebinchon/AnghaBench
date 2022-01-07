
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBP ;
 int ESP ;
 int assem_debug (char*,int ,...) ;
 int assert (int) ;
 int emit_adc (int,int) ;
 int emit_rmw_orimm (int,int,int) ;
 int emit_shrimm (int,int,int) ;
 int output_byte (int) ;
 int output_modrm (int ,int,int) ;
 int output_sib (int ,int,int) ;
 int * regname ;

void emit_sh2tas(int addr, int map, int sr)
{
  emit_shrimm(sr,1,sr);
  if(map<0) {
    assem_debug("cmpb $1,(%%%s)\n",regname[addr]);
    assert(addr!=ESP);
    output_byte(0x80);
    output_modrm(0,addr,7);
  }
  else
  {
    assem_debug("cmpb $1,(%%%s,%%%s,1)\n",regname[addr],regname[map]);
    assert(addr!=ESP);
    output_byte(0x80);
    output_modrm(0,4,7);
    if(addr!=EBP) {
      output_sib(0,map,addr);
    }
    else {
      assert(addr!=map);
      output_sib(0,addr,map);
    }
  }
  output_byte(1);
  emit_adc(sr,sr);
  emit_rmw_orimm(addr,map,0x80);
}
