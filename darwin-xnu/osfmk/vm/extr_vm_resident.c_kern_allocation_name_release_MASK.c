#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* kern_allocation_name_t ;
struct TYPE_5__ {scalar_t__ refcount; int /*<<< orphan*/  subtotalscount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC5(kern_allocation_name_t allocation)
{
    FUNC3(allocation->refcount > 0);
    if (1 == FUNC2(-1, &allocation->refcount))
    {
        FUNC4(allocation, FUNC1(FUNC0(allocation), allocation->subtotalscount));
    }
}