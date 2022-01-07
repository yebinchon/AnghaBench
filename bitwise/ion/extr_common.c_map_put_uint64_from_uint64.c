
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int len; int cap; scalar_t__* keys; scalar_t__* vals; } ;
typedef TYPE_1__ Map ;


 int IS_POW2 (int) ;
 int assert (int) ;
 int hash_uint64 (scalar_t__) ;
 int map_grow (TYPE_1__*,int) ;

void map_put_uint64_from_uint64(Map *map, uint64_t key, uint64_t val) {
    assert(key);
    if (!val) {
        return;
    }
    if (2*map->len >= map->cap) {
        map_grow(map, 2*map->cap);
    }
    assert(2*map->len < map->cap);
    assert(IS_POW2(map->cap));
    size_t i = (size_t)hash_uint64(key);
    for (;;) {
        i &= map->cap - 1;
        if (!map->keys[i]) {
            map->len++;
            map->keys[i] = key;
            map->vals[i] = val;
            return;
        } else if (map->keys[i] == key) {
            map->vals[i] = val;
            return;
        }
        i++;
    }
}
