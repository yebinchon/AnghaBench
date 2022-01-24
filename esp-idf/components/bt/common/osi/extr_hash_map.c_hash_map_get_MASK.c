#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  list_t ;
struct TYPE_7__ {size_t (* hash_fn ) (void const*) ;size_t num_bucket; TYPE_1__* bucket; } ;
typedef  TYPE_2__ hash_map_t ;
struct TYPE_8__ {void* data; } ;
typedef  TYPE_3__ hash_map_entry_t ;
typedef  size_t hash_index_t ;
struct TYPE_6__ {int /*<<< orphan*/ * list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,void const*) ; 
 size_t FUNC2 (void const*) ; 

void *FUNC3(const hash_map_t *hash_map, const void *key)
{
    FUNC0(hash_map != NULL);

    hash_index_t hash_key = hash_map->hash_fn(key) % hash_map->num_bucket;
    list_t *hash_bucket_list = hash_map->bucket[hash_key].list;

    hash_map_entry_t *hash_map_entry = FUNC1(hash_bucket_list, key);
    if (hash_map_entry != NULL) {
        return hash_map_entry->data;
    }

    return NULL;
}