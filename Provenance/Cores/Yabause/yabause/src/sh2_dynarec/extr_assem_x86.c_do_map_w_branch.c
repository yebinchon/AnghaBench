
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ can_direct_write (int ) ;
 int emit_jc (int ) ;
 scalar_t__ out ;

int do_map_w_branch(int map, int c, u32 addr, int *jaddr)
{
  if(!c||can_direct_write(addr)) {
    *jaddr=(int)out;
    emit_jc(0);
  }
}
