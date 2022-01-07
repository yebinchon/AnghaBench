
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int sizeLog; } ;
typedef TYPE_1__ COVER_map_t ;


 int prime4bytes ;

__attribute__((used)) static U32 COVER_map_hash(COVER_map_t *map, U32 key) {
  return (key * prime4bytes) >> (32 - map->sizeLog);
}
