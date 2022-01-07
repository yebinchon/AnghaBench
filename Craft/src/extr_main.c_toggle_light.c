
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lights; } ;
typedef int Map ;
typedef TYPE_1__ Chunk ;


 int chunked (int) ;
 int client_light (int,int,int,int) ;
 int db_insert_light (int,int,int,int,int,int) ;
 int dirty_chunk (TYPE_1__*) ;
 TYPE_1__* find_chunk (int,int) ;
 scalar_t__ map_get (int *,int,int,int) ;
 int map_set (int *,int,int,int,int) ;

void toggle_light(int x, int y, int z) {
    int p = chunked(x);
    int q = chunked(z);
    Chunk *chunk = find_chunk(p, q);
    if (chunk) {
        Map *map = &chunk->lights;
        int w = map_get(map, x, y, z) ? 0 : 15;
        map_set(map, x, y, z, w);
        db_insert_light(p, q, x, y, z, w);
        client_light(x, y, z, w);
        dirty_chunk(chunk);
    }
}
