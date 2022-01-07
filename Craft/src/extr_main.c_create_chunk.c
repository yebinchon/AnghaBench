
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int *** light_maps; int *** block_maps; int q; int p; } ;
typedef TYPE_1__ WorkerItem ;
struct TYPE_7__ {int lights; int map; int q; int p; } ;
typedef TYPE_2__ Chunk ;


 int init_chunk (TYPE_2__*,int,int) ;
 int load_chunk (TYPE_1__*) ;
 int request_chunk (int,int) ;

void create_chunk(Chunk *chunk, int p, int q) {
    init_chunk(chunk, p, q);

    WorkerItem _item;
    WorkerItem *item = &_item;
    item->p = chunk->p;
    item->q = chunk->q;
    item->block_maps[1][1] = &chunk->map;
    item->light_maps[1][1] = &chunk->lights;
    load_chunk(item);

    request_chunk(p, q);
}
