
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lights; } ;
typedef int Map ;
typedef TYPE_1__ Chunk ;


 int db_insert_light (int,int,int,int,int,int) ;
 int dirty_chunk (TYPE_1__*) ;
 TYPE_1__* find_chunk (int,int) ;
 scalar_t__ map_set (int *,int,int,int,int) ;

void set_light(int p, int q, int x, int y, int z, int w) {
    Chunk *chunk = find_chunk(p, q);
    if (chunk) {
        Map *map = &chunk->lights;
        if (map_set(map, x, y, z, w)) {
            dirty_chunk(chunk);
            db_insert_light(p, q, x, y, z, w);
        }
    }
    else {
        db_insert_light(p, q, x, y, z, w);
    }
}
