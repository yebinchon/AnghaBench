
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int map; } ;
typedef int Map ;
typedef TYPE_1__ Chunk ;


 int chunked (int) ;
 int db_insert_block (int,int,int,int,int,int) ;
 int dirty_chunk (TYPE_1__*) ;
 TYPE_1__* find_chunk (int,int) ;
 scalar_t__ map_set (int *,int,int,int,int) ;
 int set_light (int,int,int,int,int,int ) ;
 int unset_sign (int,int,int) ;

void _set_block(int p, int q, int x, int y, int z, int w, int dirty) {
    Chunk *chunk = find_chunk(p, q);
    if (chunk) {
        Map *map = &chunk->map;
        if (map_set(map, x, y, z, w)) {
            if (dirty) {
                dirty_chunk(chunk);
            }
            db_insert_block(p, q, x, y, z, w);
        }
    }
    else {
        db_insert_block(p, q, x, y, z, w);
    }
    if (w == 0 && chunked(x) == p && chunked(z) == q) {
        unset_sign(x, y, z);
        set_light(p, q, x, y, z, 0);
    }
}
