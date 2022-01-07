
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p; int q; int *** light_maps; int *** block_maps; } ;
typedef TYPE_1__ WorkerItem ;
typedef int Map ;


 int create_world (int,int,int ,int *) ;
 int db_load_blocks (int *,int,int) ;
 int db_load_lights (int *,int,int) ;
 int map_set_func ;

void load_chunk(WorkerItem *item) {
    int p = item->p;
    int q = item->q;
    Map *block_map = item->block_maps[1][1];
    Map *light_map = item->light_maps[1][1];
    create_world(p, q, map_set_func, block_map);
    db_load_blocks(block_map, p, q);
    db_load_lights(light_map, p, q);
}
