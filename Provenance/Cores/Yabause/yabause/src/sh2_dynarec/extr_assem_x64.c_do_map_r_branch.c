
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int emit_js (int ) ;
 int emit_test64 (int,int) ;
 scalar_t__ out ;

int do_map_r_branch(int map, int c, u32 addr, int *jaddr)
{
  if(!c) {
    emit_test64(map,map);
    *jaddr=(int)out;
    emit_js(0);
  }
  return map;
}
