
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ can_direct_write (int ) ;
 int emit_jne (int ) ;
 int emit_testimm (int,int) ;
 scalar_t__ out ;

int do_map_w_branch(int map, int c, u32 addr, int *jaddr)
{
  if(!c||can_direct_write(addr)) {
    emit_testimm(map,0x40000000);
    *jaddr=(int)out;
    emit_jne(0);
  }
}
