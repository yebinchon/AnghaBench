
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int list_t ;
struct TYPE_10__ {size_t (* hash_fn ) (void const*) ;size_t num_bucket; int hash_size; TYPE_1__* bucket; } ;
typedef TYPE_2__ hash_map_t ;
struct TYPE_11__ {TYPE_2__* hash_map; void* data; void const* key; } ;
typedef TYPE_3__ hash_map_entry_t ;
typedef size_t hash_index_t ;
struct TYPE_9__ {int * list; } ;


 int assert (int) ;
 int bucket_free_ ;
 TYPE_3__* find_bucket_entry_ (int *,void const*) ;
 int list_append (int *,TYPE_3__*) ;
 int * list_new_internal (int ) ;
 int list_remove (int *,TYPE_3__*) ;
 TYPE_3__* osi_calloc (int) ;
 size_t stub1 (void const*) ;

bool hash_map_set(hash_map_t *hash_map, const void *key, void *data)
{
    assert(hash_map != ((void*)0));
    assert(data != ((void*)0));

    hash_index_t hash_key = hash_map->hash_fn(key) % hash_map->num_bucket;

    if (hash_map->bucket[hash_key].list == ((void*)0)) {
        hash_map->bucket[hash_key].list = list_new_internal(bucket_free_);
        if (hash_map->bucket[hash_key].list == ((void*)0)) {
            return 0;
        }
    }
    list_t *hash_bucket_list = hash_map->bucket[hash_key].list;

    hash_map_entry_t *hash_map_entry = find_bucket_entry_(hash_bucket_list, key);

    if (hash_map_entry) {

        bool rc = list_remove(hash_bucket_list, hash_map_entry);
        assert(rc == 1);
    } else {
        hash_map->hash_size++;
    }
    hash_map_entry = osi_calloc(sizeof(hash_map_entry_t));
    if (hash_map_entry == ((void*)0)) {
        return 0;
    }

    hash_map_entry->key = key;
    hash_map_entry->data = data;
    hash_map_entry->hash_map = hash_map;

    return list_append(hash_bucket_list, hash_map_entry);
}
