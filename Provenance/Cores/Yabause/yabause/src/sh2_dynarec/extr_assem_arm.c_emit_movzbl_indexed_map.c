
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emit_addimm (int,int,int) ;
 int emit_movzbl_dualindexedx4 (int,int,int) ;
 int emit_movzbl_indexed (int,int,int) ;

void emit_movzbl_indexed_map(int addr, int rs, int map, int rt)
{
  if(map<0) emit_movzbl_indexed(addr, rs, rt);
  else {
    if(addr==0) {
      emit_movzbl_dualindexedx4(rs, map, rt);
    }else{
      emit_addimm(rs,addr,rt);
      emit_movzbl_dualindexedx4(rt, map, rt);
    }
  }
}
