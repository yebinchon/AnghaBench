
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* bucket; } ;
typedef TYPE_1__ hash_map_t ;


 int hash_map_clear (TYPE_1__*) ;
 int osi_free (TYPE_1__*) ;

void hash_map_free(hash_map_t *hash_map)
{
    if (hash_map == ((void*)0)) {
        return;
    }
    hash_map_clear(hash_map);
    osi_free(hash_map->bucket);
    osi_free(hash_map);
}
