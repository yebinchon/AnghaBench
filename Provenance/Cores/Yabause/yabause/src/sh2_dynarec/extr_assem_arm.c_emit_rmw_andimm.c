
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int emit_andimm (int,int,int) ;
 int emit_movzbl_dualindexedx4 (int,int,int) ;
 int emit_writebyte_dualindexedx4 (int,int,int) ;

void emit_rmw_andimm(int addr, int map, int imm)
{
  if(map<0) {
    assert(map>=0);
  }
  else
  {
    emit_movzbl_dualindexedx4(addr, map, 14);
    emit_andimm(14,imm,14);
    emit_writebyte_dualindexedx4(14, addr, map);
  }
}
