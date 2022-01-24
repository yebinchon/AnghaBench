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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_4__ {scalar_t__ maxitems; scalar_t__ pool_maxitems; int npools; int /*<<< orphan*/  pools; int /*<<< orphan*/  pool_capacity; } ;
typedef  int /*<<< orphan*/  KXLDArrayPool ;
typedef  TYPE_1__ KXLDArray ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t 
FUNC4(KXLDArray *array, u_int nitems)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDArrayPool *pool = NULL;

    /* Grow the list of pools until we have enough to fit all of the entries */

    while (nitems > array->maxitems) {
        pool = FUNC1(array->pool_capacity);
        FUNC3(*pool, finish, rval=KERN_FAILURE);

        FUNC0(&array->pools, pool, entries);

        array->maxitems += array->pool_maxitems;
        array->npools += 1;
    }

    nitems = FUNC2(array, nitems);
    FUNC3(nitems == 0, finish, rval=KERN_FAILURE);

    rval = KERN_SUCCESS;
finish:
    return rval;
}