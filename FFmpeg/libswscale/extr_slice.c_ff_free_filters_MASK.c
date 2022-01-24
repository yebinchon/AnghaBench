#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* instance; } ;
struct TYPE_5__ {int numDesc; int numSlice; TYPE_2__* slice; TYPE_2__* desc; } ;
typedef  TYPE_1__ SwsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

int FUNC2(SwsContext *c)
{
    int i;
    if (c->desc) {
        for (i = 0; i < c->numDesc; ++i)
            FUNC0(&c->desc[i].instance);
        FUNC0(&c->desc);
    }

    if (c->slice) {
        for (i = 0; i < c->numSlice; ++i)
            FUNC1(&c->slice[i]);
        FUNC0(&c->slice);
    }
    return 0;
}