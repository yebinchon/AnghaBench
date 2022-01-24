#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* stream; } ;
typedef  TYPE_3__ sync_delta_t ;
typedef  TYPE_3__ hb_work_private_t ;
struct TYPE_13__ {TYPE_3__* private_data; } ;
typedef  TYPE_5__ hb_work_object_t ;
struct TYPE_10__ {scalar_t__ resample; } ;
struct TYPE_11__ {int /*<<< orphan*/  scr_delay_queue; int /*<<< orphan*/  in_queue; int /*<<< orphan*/  delta_list; TYPE_1__ audio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void FUNC6( hb_work_object_t * w )
{
    hb_work_private_t * pv   = w->private_data;

    if (pv == NULL)
    {
        return;
    }

    // Free samplerate conversion context
    if (pv->stream->audio.resample)
    {
        FUNC1(pv->stream->audio.resample);
    }

    sync_delta_t * delta;
    while ((delta = FUNC4(pv->stream->delta_list, 0)) != NULL)
    {
        FUNC5(pv->stream->delta_list, delta);
        FUNC0(delta);
    }
    FUNC2(&pv->stream->delta_list);
    FUNC3(&pv->stream->in_queue);
    FUNC3(&pv->stream->scr_delay_queue);
    FUNC0(pv);
    w->private_data = NULL;
}