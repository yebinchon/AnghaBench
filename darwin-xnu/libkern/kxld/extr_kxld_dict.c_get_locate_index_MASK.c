#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_9__ {int nitems; } ;
struct TYPE_8__ {scalar_t__ state; int /*<<< orphan*/  key; } ;
struct TYPE_7__ {int (* hash ) (TYPE_1__ const*,void const*) ;TYPE_5__ buckets; int /*<<< orphan*/  (* cmp ) (int /*<<< orphan*/ ,void const*) ;} ;
typedef  TYPE_1__ KXLDDict ;
typedef  TYPE_2__ DictEntry ;

/* Variables and functions */
 scalar_t__ EMPTY ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_5__*,int) ; 
 int FUNC2 (TYPE_1__ const*,void const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*) ; 

__attribute__((used)) static kern_return_t
FUNC4(const KXLDDict *dict, const void *key, u_int *_idx)
{
    kern_return_t rval = KERN_FAILURE;
    DictEntry *entry = NULL;
    u_int base, idx;

    base = idx = dict->hash(dict, key);
    
    /* Iterate until we match the key, wrap, or hit an empty bucket */
    entry = FUNC1(&dict->buckets, idx);
    while (!dict->cmp(entry->key, key)) {
        if (entry->state == EMPTY) goto finish;

        idx = (idx + 1) % dict->buckets.nitems;
        if (idx == base) goto finish;

        entry = FUNC1(&dict->buckets, idx);
    }

    FUNC0(idx < dict->buckets.nitems);

    *_idx = idx;
    rval = KERN_SUCCESS;

finish:
    return rval;
}