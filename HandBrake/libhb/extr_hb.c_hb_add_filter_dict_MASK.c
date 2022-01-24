#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  list_filter; } ;
typedef  TYPE_2__ hb_job_t ;
struct TYPE_12__ {scalar_t__ id; scalar_t__ enforce_order; TYPE_1__* sub_filter; int /*<<< orphan*/  const* settings; } ;
typedef  TYPE_3__ hb_filter_object_t ;
typedef  int /*<<< orphan*/  const hb_dict_t ;
struct TYPE_10__ {void* settings; } ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int /*<<< orphan*/  const*) ; 

void FUNC7( hb_job_t * job, hb_filter_object_t * filter,
                         const hb_dict_t * settings_in )
{
    hb_dict_t * settings;

    // Always set filter->settings to a valid hb_dict_t
    if (settings_in == NULL)
    {
        settings = FUNC0();
    }
    else
    {
        settings = FUNC6(settings_in);
    }
    filter->settings = settings;
    if (filter->sub_filter)
    {
        filter->sub_filter->settings = FUNC6(settings);
    }
    if( filter->enforce_order )
    {
        // Find the position in the filter chain this filter belongs in
        int i;
        for( i = 0; i < FUNC3( job->list_filter ); i++ )
        {
            hb_filter_object_t * f = FUNC5( job->list_filter, i );
            if( f->id > filter->id )
            {
                FUNC4( job->list_filter, i, filter );
                return;
            }
            else if( f->id == filter->id )
            {
                // Don't allow the same filter to be added twice
                FUNC1( &filter );
                return;
            }
        }
    }
    // No position found or order not enforced for this filter
    FUNC2( job->list_filter, filter );
}