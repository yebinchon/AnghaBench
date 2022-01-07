
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int Map ;


 int map_get_uint64_from_uint64 (int *,int ) ;

uint64_t map_get_uint64(Map *map, void *key) {
    return map_get_uint64_from_uint64(map, (uint64_t)(uintptr_t)key);
}
