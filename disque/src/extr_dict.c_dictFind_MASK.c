#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {struct TYPE_11__* next; int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ dictEntry ;
struct TYPE_12__ {TYPE_1__* ht; } ;
typedef  TYPE_3__ dict ;
struct TYPE_10__ {scalar_t__ size; unsigned int sizemask; TYPE_2__** table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,void const*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (TYPE_3__*,void const*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 

dictEntry *FUNC4(dict *d, const void *key)
{
    dictEntry *he;
    unsigned int h, idx, table;

    if (d->ht[0].size == 0) return NULL; /* We don't have a table at all */
    if (FUNC3(d)) FUNC0(d);
    h = FUNC2(d, key);
    for (table = 0; table <= 1; table++) {
        idx = h & d->ht[table].sizemask;
        he = d->ht[table].table[idx];
        while(he) {
            if (FUNC1(d, key, he->key))
                return he;
            he = he->next;
        }
        if (!FUNC3(d)) return NULL;
    }
    return NULL;
}