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
typedef  int /*<<< orphan*/  list_node_t ;
struct TYPE_5__ {int /*<<< orphan*/  key; TYPE_1__* hash_map; } ;
typedef  TYPE_2__ hash_map_entry_t ;
struct TYPE_4__ {scalar_t__ (* keys_are_equal ) (int /*<<< orphan*/ ,void const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void const*) ; 

__attribute__((used)) static hash_map_entry_t *FUNC5(list_t *hash_bucket_list,
        const void *key)
{

    if (hash_bucket_list == NULL) {
        return NULL;
    }

    for (const list_node_t *iter = FUNC0(hash_bucket_list);
            iter != FUNC1(hash_bucket_list);
            iter = FUNC2(iter)) {
        hash_map_entry_t *hash_map_entry = (hash_map_entry_t *)FUNC3(iter);
        if (hash_map_entry->hash_map->keys_are_equal(hash_map_entry->key, key)) {
            return hash_map_entry;
        }
    }
    return NULL;
}