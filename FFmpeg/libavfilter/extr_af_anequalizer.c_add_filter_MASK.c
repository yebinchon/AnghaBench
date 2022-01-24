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
struct TYPE_6__ {int /*<<< orphan*/  sample_rate; } ;
struct TYPE_5__ {size_t nb_filters; int nb_allocated; int /*<<< orphan*/ * filters; } ;
typedef  int /*<<< orphan*/  EqualizatorFilter ;
typedef  TYPE_1__ AudioNEqualizerContext ;
typedef  TYPE_2__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(AudioNEqualizerContext *s, AVFilterLink *inlink)
{
    FUNC3(&s->filters[s->nb_filters], inlink->sample_rate);
    if (s->nb_filters >= s->nb_allocated) {
        EqualizatorFilter *filters;

        filters = FUNC1(s->nb_allocated, 2 * sizeof(*s->filters));
        if (!filters)
            return FUNC0(ENOMEM);
        FUNC4(filters, s->filters, sizeof(*s->filters) * s->nb_allocated);
        FUNC2(s->filters);
        s->filters = filters;
        s->nb_allocated *= 2;
    }
    s->nb_filters++;

    return 0;
}