
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int key_free_fn ;
typedef scalar_t__ key_equality_fn ;
struct TYPE_4__ {size_t num_bucket; int * bucket; scalar_t__ keys_are_equal; int data_fn; int key_fn; int * hash_fn; } ;
typedef TYPE_1__ hash_map_t ;
typedef int hash_map_bucket_t ;
typedef int * hash_index_fn ;
typedef int data_free_fn ;


 int assert (int) ;
 scalar_t__ default_key_equality ;
 void* osi_calloc (int) ;
 int osi_free (TYPE_1__*) ;

hash_map_t *hash_map_new_internal(
    size_t num_bucket,
    hash_index_fn hash_fn,
    key_free_fn key_fn,
    data_free_fn data_fn,
    key_equality_fn equality_fn)
{
    assert(hash_fn != ((void*)0));
    assert(num_bucket > 0);
    hash_map_t *hash_map = osi_calloc(sizeof(hash_map_t));
    if (hash_map == ((void*)0)) {
        return ((void*)0);
    }

    hash_map->hash_fn = hash_fn;
    hash_map->key_fn = key_fn;
    hash_map->data_fn = data_fn;
    hash_map->keys_are_equal = equality_fn ? equality_fn : default_key_equality;

    hash_map->num_bucket = num_bucket;
    hash_map->bucket = osi_calloc(sizeof(hash_map_bucket_t) * num_bucket);
    if (hash_map->bucket == ((void*)0)) {
        osi_free(hash_map);
        return ((void*)0);
    }
    return hash_map;
}
