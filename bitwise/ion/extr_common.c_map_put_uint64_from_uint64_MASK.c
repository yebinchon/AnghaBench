#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {int len; int cap; scalar_t__* keys; scalar_t__* vals; } ;
typedef  TYPE_1__ Map ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4(Map *map, uint64_t key, uint64_t val) {
    FUNC1(key);
    if (!val) {
        return;
    }
    if (2*map->len >= map->cap) {
        FUNC3(map, 2*map->cap);
    }
    FUNC1(2*map->len < map->cap);
    FUNC1(FUNC0(map->cap));
    size_t i = (size_t)FUNC2(key);
    for (;;) {
        i &= map->cap - 1;
        if (!map->keys[i]) {
            map->len++;
            map->keys[i] = key;
            map->vals[i] = val;
            return;
        } else if (map->keys[i] == key) {
            map->vals[i] = val;
            return;
        }
        i++;
    }
}