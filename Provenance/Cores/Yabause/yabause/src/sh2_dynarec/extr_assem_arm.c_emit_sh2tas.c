
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int emit_andimm (int,int,int) ;
 int emit_movzbl_dualindexedx4 (int,int,int) ;
 int emit_orimm (int,int,int) ;
 int emit_orreq_imm (int,int,int) ;
 int emit_testimm (int,int) ;
 int emit_writebyte_dualindexedx4 (int,int,int) ;

void emit_sh2tas(int addr, int map, int sr)
{
  if(map<0) {
    assert(map>=0);
  }
  else
  {
    emit_movzbl_dualindexedx4(addr, map, 14);
    emit_andimm(sr,~1,sr);
    emit_testimm(14,0xff);
    emit_orimm(14,0x80,14);
    emit_orreq_imm(sr,1,sr);
    emit_writebyte_dualindexedx4(14, addr, map);
  }
}
