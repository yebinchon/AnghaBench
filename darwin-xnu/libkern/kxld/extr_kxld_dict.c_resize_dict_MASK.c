#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_13__ {scalar_t__ state; int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
struct TYPE_12__ {int nitems; } ;
struct TYPE_11__ {TYPE_2__ resize_buckets; TYPE_2__ buckets; int /*<<< orphan*/  resize_threshold; scalar_t__ num_entries; } ;
typedef  TYPE_1__ KXLDDict ;
typedef  TYPE_2__ KXLDArray ;
typedef  TYPE_3__ DictEntry ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ USED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_3__* FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC7(KXLDDict *dict)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDArray tmparray;
    DictEntry *entry = NULL;
    u_int nbuckets = (dict->buckets.nitems * 2 + 1);
    u_int i = 0;

    FUNC1(dict);

    /* Initialize a new set of buckets to hold more entries */
    rval = FUNC4(&dict->resize_buckets, sizeof(DictEntry), nbuckets);
    FUNC6(rval, finish);

    /* Swap the new buckets with the old buckets */
    tmparray = dict->buckets;
    dict->buckets = dict->resize_buckets;
    dict->resize_buckets = tmparray; 

    /* Reset dictionary parameters */
    dict->num_entries = 0;
    dict->resize_threshold = FUNC0(dict->buckets.nitems);

    /* Rehash all of the entries */
    for (i = 0; i < dict->resize_buckets.nitems; ++i) {
        entry = FUNC3(&dict->resize_buckets, i);
        if (entry->state == USED) {
            rval = FUNC5(dict, entry->key, entry->value);
            FUNC6(rval, finish);
        }
    }

    /* Clear the old buckets */
    FUNC2(&dict->resize_buckets);

    rval = KERN_SUCCESS;
    
finish:
    return rval;
}