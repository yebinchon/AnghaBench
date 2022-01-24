#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  list_t ;
struct TYPE_10__ {size_t (* hash_fn ) (void const*) ;size_t num_bucket; int /*<<< orphan*/  hash_size; TYPE_1__* bucket; } ;
typedef  TYPE_2__ hash_map_t ;
struct TYPE_11__ {TYPE_2__* hash_map; void* data; void const* key; } ;
typedef  TYPE_3__ hash_map_entry_t ;
typedef  size_t hash_index_t ;
struct TYPE_9__ {int /*<<< orphan*/ * list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bucket_free_ ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,void const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC5 (int) ; 
 size_t FUNC6 (void const*) ; 

bool FUNC7(hash_map_t *hash_map, const void *key, void *data)
{
    FUNC0(hash_map != NULL);
    FUNC0(data != NULL);

    hash_index_t hash_key = hash_map->hash_fn(key) % hash_map->num_bucket;

    if (hash_map->bucket[hash_key].list == NULL) {
        hash_map->bucket[hash_key].list = FUNC3(bucket_free_);
        if (hash_map->bucket[hash_key].list == NULL) {
            return false;
        }
    }
    list_t *hash_bucket_list = hash_map->bucket[hash_key].list;

    hash_map_entry_t *hash_map_entry = FUNC1(hash_bucket_list, key);

    if (hash_map_entry) {
        // Calls hash_map callback to delete the hash_map_entry.
        bool rc = FUNC4(hash_bucket_list, hash_map_entry);
        FUNC0(rc == true);
    } else {
        hash_map->hash_size++;
    }
    hash_map_entry = FUNC5(sizeof(hash_map_entry_t));
    if (hash_map_entry == NULL) {
        return false;
    }

    hash_map_entry->key = key;
    hash_map_entry->data = data;
    hash_map_entry->hash_map = hash_map;

    return FUNC2(hash_bucket_list, hash_map_entry);
}