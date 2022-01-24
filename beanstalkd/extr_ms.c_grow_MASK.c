#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cap; void** items; int len; } ;
typedef  TYPE_1__ Ms ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 
 void** FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (void**,void**,int) ; 

__attribute__((used)) static int
FUNC3(Ms *a)
{
    void **nitems;
    size_t ncap = a->cap << 1;
    if (!ncap)
        ncap = 1;

    nitems = FUNC1(ncap * sizeof(void *));
    if (!nitems)
        return 0;

    FUNC2(nitems, a->items, a->len * sizeof(void *));
    FUNC0(a->items);
    a->items = nitems;
    a->cap = ncap;
    return 1;
}