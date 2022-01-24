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
struct TYPE_5__ {int mode; scalar_t__ filter_mode; int /*<<< orphan*/  decomb_check_taskset; int /*<<< orphan*/  mask_erode_taskset; int /*<<< orphan*/  mask_dilate_taskset; int /*<<< orphan*/  mask_filter_taskset; int /*<<< orphan*/  decomb_filter_taskset; } ;
typedef  TYPE_1__ hb_filter_private_t ;

/* Variables and functions */
 scalar_t__ FILTER_ERODE_DILATE ; 
 int MODE_FILTER ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3( hb_filter_private_t * pv )
{
    /*
     * Now that all data for decomb detection is ready for
     * our threads, fire them off and wait for their completion.
     */
    FUNC2( &pv->decomb_filter_taskset );

    if (pv->mode & MODE_FILTER)
    {
        FUNC2( &pv->mask_filter_taskset );
        if (pv->filter_mode == FILTER_ERODE_DILATE)
        {
            FUNC2( &pv->mask_erode_taskset );
            FUNC2( &pv->mask_dilate_taskset );
            FUNC2( &pv->mask_erode_taskset );
        }
    }
    FUNC1(pv);
    FUNC2(&pv->decomb_check_taskset);
    return FUNC0(pv);
}