
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uptr ;


 int M68K_MEM_SHIFT ;
 int xmap_set (int *,int ,int,int,void const*,int) ;

void cpu68k_map_set(uptr *map, int start_addr, int end_addr,
    const void *func_or_mh, int is_func)
{
  xmap_set(map, M68K_MEM_SHIFT, start_addr, end_addr, func_or_mh, is_func);
}
