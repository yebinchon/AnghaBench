#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  void* int64_t ;
struct TYPE_14__ {scalar_t__ frameno_in; scalar_t__ frameno_out; int /*<<< orphan*/  delay_list; TYPE_1__* job; void* dts_delay; } ;
typedef  TYPE_3__ hb_work_private_t ;
struct TYPE_13__ {void* start; void* renderOffset; } ;
struct TYPE_15__ {TYPE_2__ s; struct TYPE_15__* next; } ;
typedef  TYPE_4__ hb_buffer_t ;
struct TYPE_12__ {scalar_t__ areBframes; } ;

/* Variables and functions */
 void* FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static hb_buffer_t * FUNC4( hb_work_private_t * pv, hb_buffer_t * buf )
{
    if (pv->job->areBframes)
    {
        // Has dts_delay been set yet?
        FUNC1(&pv->delay_list, buf);
        if (pv->frameno_in <= pv->job->areBframes)
        {
            // dts_delay not yet set.  queue up buffers till it is set.
            return NULL;
        }

        // We have dts_delay.  Apply it to any queued buffers renderOffset
        // and return all queued buffers.
        buf = FUNC3(&pv->delay_list);
        while (buf != NULL)
        {
            // Use the cached frame info to get the start time of Nth frame
            // Note that start Nth frame != start time this buffer since the
            // output buffers have rearranged start times.
            if (pv->frameno_out < pv->job->areBframes)
            {
                int64_t start = FUNC0( pv, pv->frameno_out );
                buf->s.renderOffset = start - pv->dts_delay;
            }
            else
            {
                buf->s.renderOffset = FUNC0(pv,
                                        pv->frameno_out - pv->job->areBframes);
            }
            buf = buf->next;
            pv->frameno_out++;
        }
        buf = FUNC2(&pv->delay_list);
        return buf;
    }
    else if (buf != NULL)
    {
        buf->s.renderOffset = buf->s.start;
        return buf;
    }
    return NULL;
}