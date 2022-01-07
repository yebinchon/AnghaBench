
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int emit_mov (int,int) ;
 int emit_movmem_indexedx8_64 (int,int,int) ;
 int emit_shrimm (int,int,int) ;
 int emit_xorimm (int,int,int) ;
 scalar_t__ memory_map ;

int do_map_r(int s,int ar,int map,int cache,int x,int a,int shift,int c,u32 addr)
{
  if(c) {




      return -1;
  }
  else {
    if(s!=map) emit_mov(s,map);
    emit_shrimm(map,12,map);

    if(x) emit_xorimm(s,x,ar);


    emit_movmem_indexedx8_64((int)memory_map,map,map);
  }
  return map;
}
