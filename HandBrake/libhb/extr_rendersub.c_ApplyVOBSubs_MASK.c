#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  sub_list; } ;
typedef  TYPE_2__ hb_filter_private_t ;
struct TYPE_16__ {scalar_t__ stop; scalar_t__ start; } ;
struct TYPE_18__ {struct TYPE_18__* next; TYPE_1__ s; } ;
typedef  TYPE_3__ hb_buffer_t ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*,TYPE_3__*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void FUNC6( hb_filter_private_t * pv, hb_buffer_t * buf )
{
    int ii;
    hb_buffer_t *sub, *next;

    for( ii = 0; ii < FUNC3(pv->sub_list); )
    {
        sub = FUNC4( pv->sub_list, ii );
        if (ii + 1 < FUNC3(pv->sub_list))
            next = FUNC4( pv->sub_list, ii + 1 );
        else
            next = NULL;

        if ((sub->s.stop != AV_NOPTS_VALUE && sub->s.stop <= buf->s.start) ||
            (next != NULL && sub->s.stop == AV_NOPTS_VALUE && next->s.start <= buf->s.start))
        {
            // Subtitle stop is in the past, delete it
            FUNC5( pv->sub_list, sub );
            FUNC2( &sub );
        }
        else if( sub->s.start <= buf->s.start )
        {
            // The subtitle has started before this frame and ends
            // after it.  Render the subtitle into the frame.
            while ( sub )
            {
                hb_buffer_t *scaled = FUNC1(pv, sub, buf);
                FUNC0( pv, buf, scaled );
                FUNC2(&scaled);
                sub = sub->next;
            }
            ii++;
        }
        else
        {
            // The subtitle starts in the future.  No need to continue.
            break;
        }
    }
}