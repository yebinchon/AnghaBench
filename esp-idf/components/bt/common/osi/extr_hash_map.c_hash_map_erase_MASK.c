#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  list_t ;
struct TYPE_5__ {size_t (* hash_fn ) (void const*) ;size_t num_bucket; TYPE_1__* bucket; int /*<<< orphan*/  hash_size; } ;
typedef  TYPE_2__ hash_map_t ;
typedef  int /*<<< orphan*/  hash_map_entry_t ;
typedef  size_t hash_index_t ;
struct TYPE_4__ {int /*<<< orphan*/ * list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,void const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC5 (void const*) ; 

bool FUNC6(hash_map_t *hash_map, const void *key)
{
    FUNC0(hash_map != NULL);

    hash_index_t hash_key = hash_map->hash_fn(key) % hash_map->num_bucket;
    list_t *hash_bucket_list = hash_map->bucket[hash_key].list;

    hash_map_entry_t *hash_map_entry = FUNC1(hash_bucket_list, key);
    if (hash_map_entry == NULL) {
        return false;
    }

    hash_map->hash_size--;
    bool remove = FUNC4(hash_bucket_list, hash_map_entry);
    if(FUNC3(hash_map->bucket[hash_key].list)) {
        FUNC2(hash_map->bucket[hash_key].list);
        hash_map->bucket[hash_key].list = NULL;
    }
                
    return remove;
}