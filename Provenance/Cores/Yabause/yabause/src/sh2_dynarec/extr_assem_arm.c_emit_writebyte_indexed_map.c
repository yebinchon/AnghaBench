
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_addimm (int,int,int) ;
 int emit_writebyte_dualindexedx4 (int,int,int) ;
 int emit_writebyte_indexed (int,int,int) ;

void emit_writebyte_indexed_map(int rt, int addr, int rs, int map, int temp)
{
  if(map<0) emit_writebyte_indexed(rt, addr, rs);
  else {
    if(addr==0) {
      emit_writebyte_dualindexedx4(rt, rs, map);
    }else{
      emit_addimm(rs,addr,temp);
      emit_writebyte_dualindexedx4(rt, temp, map);
    }
  }
}
