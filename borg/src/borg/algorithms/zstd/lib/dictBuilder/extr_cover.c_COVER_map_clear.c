
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int data; } ;
typedef TYPE_1__ COVER_map_t ;
typedef int COVER_map_pair_t ;


 int MAP_EMPTY_VALUE ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void COVER_map_clear(COVER_map_t *map) {
  memset(map->data, MAP_EMPTY_VALUE, map->size * sizeof(COVER_map_pair_t));
}
