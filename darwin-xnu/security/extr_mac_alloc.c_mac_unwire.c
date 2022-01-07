
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAST_USER_ADDR_T (void*) ;
 int FALSE ;
 int kalloc_map ;
 int vm_map_unwire (int ,int ,int ,int ) ;

int
mac_unwire(void *start, void *end)
{

 return (vm_map_unwire(kalloc_map, CAST_USER_ADDR_T(start),
  CAST_USER_ADDR_T(end), FALSE));
}
