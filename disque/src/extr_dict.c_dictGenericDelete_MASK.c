#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {struct TYPE_15__* next; int /*<<< orphan*/  key; } ;
typedef  TYPE_2__ dictEntry ;
struct TYPE_16__ {TYPE_1__* ht; } ;
typedef  TYPE_3__ dict ;
struct TYPE_14__ {scalar_t__ size; unsigned int sizemask; int /*<<< orphan*/  used; TYPE_2__** table; } ;

/* Variables and functions */
 int DICT_ERR ; 
 int DICT_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 unsigned int FUNC4 (TYPE_3__*,void const*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(dict *d, const void *key, int nofree)
{
    unsigned int h, idx;
    dictEntry *he, *prevHe;
    int table;

    if (d->ht[0].size == 0) return DICT_ERR; /* d->ht[0].table is NULL */
    if (FUNC5(d)) FUNC0(d);
    h = FUNC4(d, key);

    for (table = 0; table <= 1; table++) {
        idx = h & d->ht[table].sizemask;
        he = d->ht[table].table[idx];
        prevHe = NULL;
        while(he) {
            if (FUNC1(d, key, he->key)) {
                /* Unlink the element from the list */
                if (prevHe)
                    prevHe->next = he->next;
                else
                    d->ht[table].table[idx] = he->next;
                if (!nofree) {
                    FUNC2(d, he);
                    FUNC3(d, he);
                }
                FUNC6(he);
                d->ht[table].used--;
                return DICT_OK;
            }
            prevHe = he;
            he = he->next;
        }
        if (!FUNC5(d)) break;
    }
    return DICT_ERR; /* not found */
}