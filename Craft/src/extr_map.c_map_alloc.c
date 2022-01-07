
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dx; int dy; int dz; int mask; int * data; scalar_t__ size; } ;
typedef int MapEntry ;
typedef TYPE_1__ Map ;


 scalar_t__ calloc (int,int) ;

void map_alloc(Map *map, int dx, int dy, int dz, int mask) {
    map->dx = dx;
    map->dy = dy;
    map->dz = dz;
    map->mask = mask;
    map->size = 0;
    map->data = (MapEntry *)calloc(map->mask + 1, sizeof(MapEntry));
}
