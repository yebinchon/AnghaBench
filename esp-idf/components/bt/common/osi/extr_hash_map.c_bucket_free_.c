
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* data_fn ) (int ) ;int (* key_fn ) (void*) ;} ;
typedef TYPE_1__ hash_map_t ;
struct TYPE_5__ {int data; scalar_t__ key; TYPE_1__* hash_map; } ;
typedef TYPE_2__ hash_map_entry_t ;


 int assert (int ) ;
 int osi_free (TYPE_2__*) ;
 int stub1 (void*) ;
 int stub2 (int ) ;

__attribute__((used)) static void bucket_free_(void *data)
{
    assert(data != ((void*)0));
    hash_map_entry_t *hash_map_entry = (hash_map_entry_t *)data;
    const hash_map_t *hash_map = hash_map_entry->hash_map;

    if (hash_map->key_fn) {
        hash_map->key_fn((void *)hash_map_entry->key);
    }
    if (hash_map->data_fn) {
        hash_map->data_fn(hash_map_entry->data);
    }
    osi_free(hash_map_entry);
}
