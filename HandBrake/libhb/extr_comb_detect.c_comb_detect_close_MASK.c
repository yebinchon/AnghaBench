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
struct TYPE_5__ {int mode; scalar_t__ filter_mode; struct TYPE_5__* block_score; int /*<<< orphan*/  mask_temp; int /*<<< orphan*/  mask_filtered; int /*<<< orphan*/  mask; int /*<<< orphan*/ * ref; int /*<<< orphan*/ * ref_used; int /*<<< orphan*/  mask_dilate_taskset; int /*<<< orphan*/  mask_erode_taskset; int /*<<< orphan*/  mask_filter_taskset; int /*<<< orphan*/  decomb_check_taskset; int /*<<< orphan*/  decomb_filter_taskset; int /*<<< orphan*/  frames; int /*<<< orphan*/  comb_none; int /*<<< orphan*/  comb_light; int /*<<< orphan*/  comb_heavy; } ;
typedef  TYPE_1__ hb_filter_private_t ;
struct TYPE_6__ {TYPE_1__* private_data; } ;
typedef  TYPE_2__ hb_filter_object_t ;

/* Variables and functions */
 scalar_t__ FILTER_ERODE_DILATE ; 
 int MODE_FILTER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( hb_filter_object_t * filter )
{
    hb_filter_private_t * pv = filter->private_data;

    if (pv == NULL)
    {
        return;
    }

    FUNC2("comb detect: heavy %i | light %i | uncombed %i | total %i",
           pv->comb_heavy,  pv->comb_light,  pv->comb_none, pv->frames);

    FUNC3( &pv->decomb_filter_taskset );
    FUNC3( &pv->decomb_check_taskset );

    if (pv->mode & MODE_FILTER)
    {
        FUNC3( &pv->mask_filter_taskset );
        if (pv->filter_mode == FILTER_ERODE_DILATE)
        {
            FUNC3( &pv->mask_erode_taskset );
            FUNC3( &pv->mask_dilate_taskset );
        }
    }

    /* Cleanup reference buffers. */
    int ii;
    for (ii = 0; ii < 3; ii++)
    {
        if (!pv->ref_used[ii])
        {
            FUNC1(&pv->ref[ii]);
        }
    }

    /* Cleanup combing masks. */
    FUNC1(&pv->mask);
    FUNC1(&pv->mask_filtered);
    FUNC1(&pv->mask_temp);

    FUNC0(pv->block_score);
    FUNC0( pv );
    filter->private_data = NULL;
}