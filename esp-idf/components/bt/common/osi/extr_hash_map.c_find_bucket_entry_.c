
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int list_t ;
typedef int list_node_t ;
struct TYPE_5__ {int key; TYPE_1__* hash_map; } ;
typedef TYPE_2__ hash_map_entry_t ;
struct TYPE_4__ {scalar_t__ (* keys_are_equal ) (int ,void const*) ;} ;


 int * list_begin (int *) ;
 int const* list_end (int *) ;
 int * list_next (int const*) ;
 scalar_t__ list_node (int const*) ;
 scalar_t__ stub1 (int ,void const*) ;

__attribute__((used)) static hash_map_entry_t *find_bucket_entry_(list_t *hash_bucket_list,
        const void *key)
{

    if (hash_bucket_list == ((void*)0)) {
        return ((void*)0);
    }

    for (const list_node_t *iter = list_begin(hash_bucket_list);
            iter != list_end(hash_bucket_list);
            iter = list_next(iter)) {
        hash_map_entry_t *hash_map_entry = (hash_map_entry_t *)list_node(iter);
        if (hash_map_entry->hash_map->keys_are_equal(hash_map_entry->key, key)) {
            return hash_map_entry;
        }
    }
    return ((void*)0);
}
