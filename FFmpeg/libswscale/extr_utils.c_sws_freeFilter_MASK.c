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
struct TYPE_4__ {int /*<<< orphan*/  chrV; int /*<<< orphan*/  chrH; int /*<<< orphan*/  lumV; int /*<<< orphan*/  lumH; } ;
typedef  TYPE_1__ SwsFilter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(SwsFilter *filter)
{
    if (!filter)
        return;

    FUNC1(filter->lumH);
    FUNC1(filter->lumV);
    FUNC1(filter->chrH);
    FUNC1(filter->chrV);
    FUNC0(filter);
}