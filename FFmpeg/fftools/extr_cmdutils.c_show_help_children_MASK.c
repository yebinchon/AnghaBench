#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ option; } ;
typedef  TYPE_1__ AVClass ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(const AVClass *class, int flags)
{
    const AVClass *child = NULL;
    if (class->option) {
        FUNC1(&class, NULL, flags, 0);
        FUNC2("\n");
    }

    while ((child = FUNC0(class, child)))
        FUNC3(child, flags);
}