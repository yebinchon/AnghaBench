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
struct TYPE_5__ {int mode; int post_processing; struct TYPE_5__* yadif_arguments; scalar_t__ tmpc; scalar_t__ cxy; scalar_t__ cy2; scalar_t__ cx2; int /*<<< orphan*/ * eedi_full; int /*<<< orphan*/ * eedi_half; int /*<<< orphan*/ * ref; int /*<<< orphan*/  eedi2_taskset; int /*<<< orphan*/  yadif_taskset; int /*<<< orphan*/  frames; int /*<<< orphan*/  unfiltered; int /*<<< orphan*/  blended; int /*<<< orphan*/  deinterlaced; } ;
typedef  TYPE_1__ hb_filter_private_t ;
struct TYPE_6__ {TYPE_1__* private_data; } ;
typedef  TYPE_2__ hb_filter_object_t ;

/* Variables and functions */
 int MODE_DECOMB_EEDI2 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5( hb_filter_object_t * filter )
{
    hb_filter_private_t * pv = filter->private_data;

    if( !pv )
    {
        return;
    }

    FUNC3("decomb: deinterlaced %i | blended %i | unfiltered %i | total %i",
           pv->deinterlaced, pv->blended, pv->unfiltered, pv->frames);

    FUNC4( &pv->yadif_taskset );

    if( pv->mode & MODE_DECOMB_EEDI2 )
    {
        FUNC4( &pv->eedi2_taskset );
    }

    /* Cleanup reference buffers. */
    int ii;
    for (ii = 0; ii < 3; ii++)
    {
        FUNC2(&pv->ref[ii]);
    }

    if( pv->mode & MODE_DECOMB_EEDI2 )
    {
        /* Cleanup eedi-half  buffers */
        int ii;
        for( ii = 0; ii < 4; ii++ )
        {
            FUNC2(&pv->eedi_half[ii]);
        }

        /* Cleanup eedi-full  buffers */
        for( ii = 0; ii < 5; ii++ )
        {
            FUNC2(&pv->eedi_full[ii]);
        }
    }

    if( pv->post_processing > 1  && ( pv->mode & MODE_DECOMB_EEDI2 ) )
    {
        if (pv->cx2) FUNC0(pv->cx2);
        if (pv->cy2) FUNC0(pv->cy2);
        if (pv->cxy) FUNC0(pv->cxy);
        if (pv->tmpc) FUNC0(pv->tmpc);
    }

    /*
     * free memory for yadif structs
     */
    FUNC1( pv->yadif_arguments );

    FUNC1( pv );
    filter->private_data = NULL;
}