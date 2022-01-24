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
typedef  int /*<<< orphan*/  list_node_t ;
struct TYPE_5__ {size_t num_bucket; TYPE_1__* bucket; } ;
typedef  TYPE_2__ hash_map_t ;
typedef  int /*<<< orphan*/  (* hash_map_iter_cb ) (int /*<<< orphan*/ *,void*) ;
typedef  int /*<<< orphan*/  hash_map_entry_t ;
typedef  size_t hash_index_t ;
struct TYPE_4__ {int /*<<< orphan*/ * list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 

void FUNC5(hash_map_t *hash_map, hash_map_iter_cb callback, void *context)
{
    FUNC0(hash_map != NULL);
    FUNC0(callback != NULL);

    for (hash_index_t i = 0; i < hash_map->num_bucket; ++i) {
        if (hash_map->bucket[i].list == NULL) {
            continue;
        }
        for (const list_node_t *iter = FUNC1(hash_map->bucket[i].list);
                iter != FUNC2(hash_map->bucket[i].list);
                iter = FUNC3(iter)) {
            hash_map_entry_t *hash_map_entry = (hash_map_entry_t *)FUNC4(iter);
            if (!callback(hash_map_entry, context)) {
                return;
            }
        }
    }
}