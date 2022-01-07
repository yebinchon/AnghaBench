
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int list_t ;
struct TYPE_5__ {size_t (* hash_fn ) (void const*) ;size_t num_bucket; TYPE_1__* bucket; int hash_size; } ;
typedef TYPE_2__ hash_map_t ;
typedef int hash_map_entry_t ;
typedef size_t hash_index_t ;
struct TYPE_4__ {int * list; } ;


 int assert (int ) ;
 int * find_bucket_entry_ (int *,void const*) ;
 int list_free (int *) ;
 scalar_t__ list_is_empty (int *) ;
 int list_remove (int *,int *) ;
 size_t stub1 (void const*) ;

bool hash_map_erase(hash_map_t *hash_map, const void *key)
{
    assert(hash_map != ((void*)0));

    hash_index_t hash_key = hash_map->hash_fn(key) % hash_map->num_bucket;
    list_t *hash_bucket_list = hash_map->bucket[hash_key].list;

    hash_map_entry_t *hash_map_entry = find_bucket_entry_(hash_bucket_list, key);
    if (hash_map_entry == ((void*)0)) {
        return 0;
    }

    hash_map->hash_size--;
    bool remove = list_remove(hash_bucket_list, hash_map_entry);
    if(list_is_empty(hash_map->bucket[hash_key].list)) {
        list_free(hash_map->bucket[hash_key].list);
        hash_map->bucket[hash_key].list = ((void*)0);
    }

    return remove;
}
