
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ can_direct_write (int) ;
 int emit_mov (int,int) ;
 int emit_movmem_indexedx8_64 (int,int,int) ;
 int emit_movq (int,int) ;
 int emit_shlimm64 (int,int,int) ;
 int emit_shrimm (int,int,int) ;
 int emit_xorimm (int,int,int) ;
 scalar_t__ memory_map ;

int do_map_w(int s,int ar,int map,int cache,int x,int c,u32 addr)
{
  if(c) {
    if(can_direct_write(addr)) {
      emit_movq((int)(memory_map+(addr>>12)),map);
    }
    else
      return -1;
  }
  else {
    if(s!=map) emit_mov(s,map);

    emit_shrimm(map,12,map);

    if(x) emit_xorimm(s,x,ar);
    emit_movmem_indexedx8_64((int)memory_map,map,map);
  }
  emit_shlimm64(map,2,map);
  return map;
}
