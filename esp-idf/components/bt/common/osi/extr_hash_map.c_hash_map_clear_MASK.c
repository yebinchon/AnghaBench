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
struct TYPE_5__ {size_t num_bucket; TYPE_1__* bucket; } ;
typedef  TYPE_2__ hash_map_t ;
typedef  size_t hash_index_t ;
struct TYPE_4__ {int /*<<< orphan*/ * list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(hash_map_t *hash_map)
{
    FUNC0(hash_map != NULL);

    for (hash_index_t i = 0; i < hash_map->num_bucket; i++) {
        if (hash_map->bucket[i].list == NULL) {
            continue;
        }
        FUNC1(hash_map->bucket[i].list);
        hash_map->bucket[i].list = NULL;
    }
}