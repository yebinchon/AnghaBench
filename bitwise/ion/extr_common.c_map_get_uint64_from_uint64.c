
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ len; int cap; scalar_t__* keys; scalar_t__* vals; } ;
typedef TYPE_1__ Map ;


 int IS_POW2 (int) ;
 int assert (int) ;
 int hash_uint64 (scalar_t__) ;

uint64_t map_get_uint64_from_uint64(Map *map, uint64_t key) {
    if (map->len == 0) {
        return 0;
    }
    assert(IS_POW2(map->cap));
    size_t i = (size_t)hash_uint64(key);
    assert(map->len < map->cap);
    for (;;) {
        i &= map->cap - 1;
        if (map->keys[i] == key) {
            return map->vals[i];
        } else if (!map->keys[i]) {
            return 0;
        }
        i++;
    }
    return 0;
}
