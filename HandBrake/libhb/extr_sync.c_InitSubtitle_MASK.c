#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  list_work; TYPE_1__* job; TYPE_4__* streams; } ;
typedef  TYPE_5__ sync_common_t ;
typedef  void* int64_t ;
struct TYPE_21__ {TYPE_4__* stream; int /*<<< orphan*/  fifo_out; int /*<<< orphan*/ * fifo_in; TYPE_8__* subtitle; struct TYPE_21__* private_data; TYPE_5__* common; } ;
typedef  TYPE_6__ hb_work_private_t ;
typedef  TYPE_6__ hb_work_object_t ;
struct TYPE_17__ {scalar_t__ dest; } ;
struct TYPE_22__ {scalar_t__ format; scalar_t__ source; TYPE_2__ config; int /*<<< orphan*/  fifo_out; int /*<<< orphan*/ * fifo_raw; int /*<<< orphan*/  fifo_in; } ;
typedef  TYPE_8__ hb_subtitle_t ;
struct TYPE_23__ {int merge; int link; int /*<<< orphan*/  list_current; } ;
struct TYPE_18__ {TYPE_9__ sanitizer; TYPE_8__* subtitle; } ;
struct TYPE_19__ {int last_scr_sequence; int /*<<< orphan*/ * in_queue; int /*<<< orphan*/ * delta_list; TYPE_3__ subtitle; int /*<<< orphan*/  fifo_in; int /*<<< orphan*/  fifo_out; void* last_duration; void* last_scr_pts; void* last_pts; void* next_pts; scalar_t__ first_pts; int /*<<< orphan*/  type; int /*<<< orphan*/  min_len; int /*<<< orphan*/  max_len; void* scr_delay_queue; TYPE_5__* common; } ;
struct TYPE_16__ {int mux; int /*<<< orphan*/  h; int /*<<< orphan*/  list_audio; int /*<<< orphan*/  list_subtitle; } ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int HB_MUX_MASK_MP4 ; 
 scalar_t__ PASSTHRUSUB ; 
 scalar_t__ PGSSUB ; 
 int /*<<< orphan*/  SYNC_MAX_SUBTITLE_QUEUE_LEN ; 
 int /*<<< orphan*/  SYNC_MIN_SUBTITLE_QUEUE_LEN ; 
 int /*<<< orphan*/  SYNC_TYPE_SUBTITLE ; 
 scalar_t__ TEXTSUB ; 
 int /*<<< orphan*/  WORK_SYNC_SUBTITLE ; 
 TYPE_6__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 () ; 
 TYPE_8__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10( sync_common_t * common, int index )
{
    hb_work_object_t  * w = NULL;
    hb_work_private_t * pv;
    hb_subtitle_t     * subtitle;

    subtitle = FUNC8(common->job->list_subtitle, index);
    if (subtitle->fifo_raw == NULL)
    {
        // No input fifo, not configured
        return 0;
    }
    pv = FUNC0(1, sizeof(hb_work_private_t));
    if (pv == NULL) goto fail;

    pv->common  = common;
    pv->stream  =
        &common->streams[1 + FUNC6(common->job->list_audio) + index];
    pv->stream->common            = common;
    pv->stream->in_queue          = FUNC7();
    pv->stream->scr_delay_queue   = FUNC7();
    pv->stream->max_len           = SYNC_MAX_SUBTITLE_QUEUE_LEN;
    pv->stream->min_len           = SYNC_MIN_SUBTITLE_QUEUE_LEN;
    if (pv->stream->in_queue == NULL) goto fail;
    pv->stream->delta_list        = FUNC7();
    if (pv->stream->delta_list == NULL) goto fail;
    pv->stream->type              = SYNC_TYPE_SUBTITLE;
    pv->stream->first_pts         = AV_NOPTS_VALUE;
    pv->stream->next_pts          = (int64_t)AV_NOPTS_VALUE;
    pv->stream->last_pts          = (int64_t)AV_NOPTS_VALUE;
    pv->stream->last_scr_pts      = (int64_t)AV_NOPTS_VALUE;
    pv->stream->last_scr_sequence = -1;
    pv->stream->last_duration     = (int64_t)AV_NOPTS_VALUE;
    pv->stream->subtitle.subtitle = subtitle;
    pv->stream->fifo_out          = subtitle->fifo_out;
    pv->stream->fifo_in           = subtitle->fifo_in;

    w = FUNC3(common->job->h, WORK_SYNC_SUBTITLE);
    w->private_data = pv;
    w->subtitle     = subtitle;
    w->fifo_in      = subtitle->fifo_raw;
    w->fifo_out     = subtitle->fifo_out;

    FUNC9(&pv->stream->subtitle.sanitizer, 0,
           sizeof(pv->stream->subtitle.sanitizer));
    if (subtitle->format == TEXTSUB && subtitle->config.dest == PASSTHRUSUB &&
        (common->job->mux & HB_MUX_MASK_MP4))
    {
        // Merge overlapping subtitles since mpv tx3g does not support them
        pv->stream->subtitle.sanitizer.merge = 1;
    }
    // PGS subtitles don't need to be linked because there are explicit
    // "clear" subtitle packets that indicate the end time of the
    // previous subtitle
    if (subtitle->config.dest == PASSTHRUSUB &&
        subtitle->source != PGSSUB)
    {
        // Fill in stop time when it is missing
        pv->stream->subtitle.sanitizer.link = 1;
    }
    FUNC2(&pv->stream->subtitle.sanitizer.list_current);

    FUNC4(common->list_work, w);

    return 0;

fail:
    if (pv != NULL)
    {
        if (pv->stream != NULL)
        {
            FUNC5(&pv->stream->delta_list);
            FUNC5(&pv->stream->in_queue);
        }
    }
    FUNC1(pv);
    FUNC1(w);

    return 1;
}