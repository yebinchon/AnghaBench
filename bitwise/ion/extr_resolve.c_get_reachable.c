
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ map_get (int *,void*) ;
 int reachable_map ;

uint8_t get_reachable(void *ptr) {
    return (int)(intptr_t)map_get(&reachable_map, ptr);
}
