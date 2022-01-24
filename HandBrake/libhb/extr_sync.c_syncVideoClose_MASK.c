#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {struct TYPE_14__* private_data; struct TYPE_14__* common; struct TYPE_14__* streams; int /*<<< orphan*/  mutex; int /*<<< orphan*/  list_work; int /*<<< orphan*/  (* close ) (TYPE_2__*) ;int /*<<< orphan*/ * thread; TYPE_1__* stream; int /*<<< orphan*/  est_frame_count; TYPE_5__* job; } ;
typedef  TYPE_2__ sync_delta_t ;
typedef  TYPE_2__ hb_work_private_t ;
typedef  TYPE_2__ hb_work_object_t ;
struct TYPE_15__ {scalar_t__ pass_id; int /*<<< orphan*/  h; } ;
typedef  TYPE_5__ hb_job_t ;
struct TYPE_16__ {int frame_count; } ;
typedef  TYPE_6__ hb_interjob_t ;
struct TYPE_13__ {int frame_count; int min_frame_duration; int max_frame_duration; int current_duration; int /*<<< orphan*/  scr_delay_queue; int /*<<< orphan*/  in_queue; int /*<<< orphan*/  delta_list; } ;

/* Variables and functions */
 scalar_t__ HB_PASS_ENCODE_1ST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC10( hb_work_object_t * w )
{
    hb_work_private_t * pv   = w->private_data;
    hb_job_t          * job;

    if (pv == NULL)
    {
        return;
    }
    job = pv->common->job;

    FUNC7("sync: got %d frames, %d expected",
           pv->stream->frame_count, pv->common->est_frame_count );
    if (pv->stream->min_frame_duration > 0 &&
        pv->stream->max_frame_duration > 0 &&
        pv->stream->current_duration > 0)
    {
        FUNC7("sync: framerate min %.3f fps, max %.3f fps, avg %.3f fps",
               90000. / pv->stream->max_frame_duration,
               90000. / pv->stream->min_frame_duration,
               (pv->stream->frame_count * 90000.) /
                pv->stream->current_duration);
    }

    /* save data for second pass */
    if( job->pass_id == HB_PASS_ENCODE_1ST )
    {
        /* Preserve frame count for better accuracy in pass 2 */
        hb_interjob_t * interjob = FUNC1( job->h );
        interjob->frame_count = pv->stream->frame_count;
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

    // Close work threads
    hb_work_object_t * work;
    while ((work = FUNC4(pv->common->list_work, 0)))
    {
        FUNC5(pv->common->list_work, work);
        if (work->thread != NULL)
        {
            FUNC8(&work->thread);
        }
        if (work->close) work->close(work);
        FUNC0(work);
    }
    FUNC2(&pv->common->list_work);

    FUNC6(&pv->common->mutex);
    FUNC0(pv->common->streams);
    FUNC0(pv->common);
    FUNC0(pv);
    w->private_data = NULL;
}