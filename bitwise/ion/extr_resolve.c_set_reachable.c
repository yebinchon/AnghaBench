
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int map_put (int *,void*,void*) ;
 int reachable_map ;
 scalar_t__ reachable_phase ;

void set_reachable(void *ptr) {
    map_put(&reachable_map, ptr, (void *)reachable_phase);
}
