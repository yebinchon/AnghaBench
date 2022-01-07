
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int list_node_t ;
struct TYPE_5__ {size_t num_bucket; TYPE_1__* bucket; } ;
typedef TYPE_2__ hash_map_t ;
typedef int (* hash_map_iter_cb ) (int *,void*) ;
typedef int hash_map_entry_t ;
typedef size_t hash_index_t ;
struct TYPE_4__ {int * list; } ;


 int assert (int ) ;
 int * list_begin (int *) ;
 int const* list_end (int *) ;
 int * list_next (int const*) ;
 scalar_t__ list_node (int const*) ;

void hash_map_foreach(hash_map_t *hash_map, hash_map_iter_cb callback, void *context)
{
    assert(hash_map != ((void*)0));
    assert(callback != ((void*)0));

    for (hash_index_t i = 0; i < hash_map->num_bucket; ++i) {
        if (hash_map->bucket[i].list == ((void*)0)) {
            continue;
        }
        for (const list_node_t *iter = list_begin(hash_map->bucket[i].list);
                iter != list_end(hash_map->bucket[i].list);
                iter = list_next(iter)) {
            hash_map_entry_t *hash_map_entry = (hash_map_entry_t *)list_node(iter);
            if (!callback(hash_map_entry, context)) {
                return;
            }
        }
    }
}
