
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FP ;
 int assert (int) ;
 int dynarec_local ;
 int emit_addsr12 (int,int,int) ;
 int emit_movimm (int,int) ;
 int emit_readword_dualindexedx4 (int ,int,int) ;
 int emit_xorimm (int,int,int) ;
 scalar_t__ memory_map ;

int do_map_r(int s,int ar,int map,int cache,int x,int a,int shift,int c,u32 addr)
{
  if(c) {
    return -1;
  }
  else {
    assert(s!=map);
    if(cache>=0) {

      emit_addsr12(cache,s,map);
    }else{
      emit_movimm(((int)memory_map-(int)&dynarec_local)>>2,map);
      emit_addsr12(map,s,map);
    }

    if(x) emit_xorimm(s,x,ar);


    emit_readword_dualindexedx4(FP,map,map);
  }
  return map;
}
