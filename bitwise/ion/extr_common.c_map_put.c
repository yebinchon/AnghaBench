
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int Map ;


 int map_put_uint64_from_uint64 (int *,int ,int ) ;

void map_put(Map *map, const void *key, void *val) {
    map_put_uint64_from_uint64(map, (uint64_t)(uintptr_t)key, (uint64_t)(uintptr_t)val);
}
