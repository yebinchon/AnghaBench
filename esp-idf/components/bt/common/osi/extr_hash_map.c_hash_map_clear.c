
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t num_bucket; TYPE_1__* bucket; } ;
typedef TYPE_2__ hash_map_t ;
typedef size_t hash_index_t ;
struct TYPE_4__ {int * list; } ;


 int assert (int ) ;
 int list_free (int *) ;

void hash_map_clear(hash_map_t *hash_map)
{
    assert(hash_map != ((void*)0));

    for (hash_index_t i = 0; i < hash_map->num_bucket; i++) {
        if (hash_map->bucket[i].list == ((void*)0)) {
            continue;
        }
        list_free(hash_map->bucket[i].list);
        hash_map->bucket[i].list = ((void*)0);
    }
}
