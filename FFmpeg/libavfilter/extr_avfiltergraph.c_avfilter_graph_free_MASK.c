#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* internal; struct TYPE_6__* filters; struct TYPE_6__* resample_lavr_opts; struct TYPE_6__* aresample_swr_opts; struct TYPE_6__* scale_sws_opts; struct TYPE_6__* sink_links; scalar_t__ nb_filters; } ;
typedef  TYPE_1__ AVFilterGraph ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(AVFilterGraph **graph)
{
    if (!*graph)
        return;

    while ((*graph)->nb_filters)
        FUNC1((*graph)->filters[0]);

    FUNC2(*graph);

    FUNC0(&(*graph)->sink_links);

    FUNC0(&(*graph)->scale_sws_opts);
    FUNC0(&(*graph)->aresample_swr_opts);
#if FF_API_LAVR_OPTS
    av_freep(&(*graph)->resample_lavr_opts);
#endif
    FUNC0(&(*graph)->filters);
    FUNC0(&(*graph)->internal);
    FUNC0(graph);
}