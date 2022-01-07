
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {int list_work; TYPE_1__* job; TYPE_4__* streams; } ;
typedef TYPE_5__ sync_common_t ;
typedef void* int64_t ;
struct TYPE_21__ {TYPE_4__* stream; int fifo_out; int * fifo_in; TYPE_8__* subtitle; struct TYPE_21__* private_data; TYPE_5__* common; } ;
typedef TYPE_6__ hb_work_private_t ;
typedef TYPE_6__ hb_work_object_t ;
struct TYPE_17__ {scalar_t__ dest; } ;
struct TYPE_22__ {scalar_t__ format; scalar_t__ source; TYPE_2__ config; int fifo_out; int * fifo_raw; int fifo_in; } ;
typedef TYPE_8__ hb_subtitle_t ;
struct TYPE_23__ {int merge; int link; int list_current; } ;
struct TYPE_18__ {TYPE_9__ sanitizer; TYPE_8__* subtitle; } ;
struct TYPE_19__ {int last_scr_sequence; int * in_queue; int * delta_list; TYPE_3__ subtitle; int fifo_in; int fifo_out; void* last_duration; void* last_scr_pts; void* last_pts; void* next_pts; scalar_t__ first_pts; int type; int min_len; int max_len; void* scr_delay_queue; TYPE_5__* common; } ;
struct TYPE_16__ {int mux; int h; int list_audio; int list_subtitle; } ;


 scalar_t__ AV_NOPTS_VALUE ;
 int HB_MUX_MASK_MP4 ;
 scalar_t__ PASSTHRUSUB ;
 scalar_t__ PGSSUB ;
 int SYNC_MAX_SUBTITLE_QUEUE_LEN ;
 int SYNC_MIN_SUBTITLE_QUEUE_LEN ;
 int SYNC_TYPE_SUBTITLE ;
 scalar_t__ TEXTSUB ;
 int WORK_SYNC_SUBTITLE ;
 TYPE_6__* calloc (int,int) ;
 int free (TYPE_6__*) ;
 int hb_buffer_list_clear (int *) ;
 TYPE_6__* hb_get_work (int ,int ) ;
 int hb_list_add (int ,TYPE_6__*) ;
 int hb_list_close (int **) ;
 int hb_list_count (int ) ;
 void* hb_list_init () ;
 TYPE_8__* hb_list_item (int ,int) ;
 int memset (TYPE_9__*,int ,int) ;

__attribute__((used)) static int InitSubtitle( sync_common_t * common, int index )
{
    hb_work_object_t * w = ((void*)0);
    hb_work_private_t * pv;
    hb_subtitle_t * subtitle;

    subtitle = hb_list_item(common->job->list_subtitle, index);
    if (subtitle->fifo_raw == ((void*)0))
    {

        return 0;
    }
    pv = calloc(1, sizeof(hb_work_private_t));
    if (pv == ((void*)0)) goto fail;

    pv->common = common;
    pv->stream =
        &common->streams[1 + hb_list_count(common->job->list_audio) + index];
    pv->stream->common = common;
    pv->stream->in_queue = hb_list_init();
    pv->stream->scr_delay_queue = hb_list_init();
    pv->stream->max_len = SYNC_MAX_SUBTITLE_QUEUE_LEN;
    pv->stream->min_len = SYNC_MIN_SUBTITLE_QUEUE_LEN;
    if (pv->stream->in_queue == ((void*)0)) goto fail;
    pv->stream->delta_list = hb_list_init();
    if (pv->stream->delta_list == ((void*)0)) goto fail;
    pv->stream->type = SYNC_TYPE_SUBTITLE;
    pv->stream->first_pts = AV_NOPTS_VALUE;
    pv->stream->next_pts = (int64_t)AV_NOPTS_VALUE;
    pv->stream->last_pts = (int64_t)AV_NOPTS_VALUE;
    pv->stream->last_scr_pts = (int64_t)AV_NOPTS_VALUE;
    pv->stream->last_scr_sequence = -1;
    pv->stream->last_duration = (int64_t)AV_NOPTS_VALUE;
    pv->stream->subtitle.subtitle = subtitle;
    pv->stream->fifo_out = subtitle->fifo_out;
    pv->stream->fifo_in = subtitle->fifo_in;

    w = hb_get_work(common->job->h, WORK_SYNC_SUBTITLE);
    w->private_data = pv;
    w->subtitle = subtitle;
    w->fifo_in = subtitle->fifo_raw;
    w->fifo_out = subtitle->fifo_out;

    memset(&pv->stream->subtitle.sanitizer, 0,
           sizeof(pv->stream->subtitle.sanitizer));
    if (subtitle->format == TEXTSUB && subtitle->config.dest == PASSTHRUSUB &&
        (common->job->mux & HB_MUX_MASK_MP4))
    {

        pv->stream->subtitle.sanitizer.merge = 1;
    }



    if (subtitle->config.dest == PASSTHRUSUB &&
        subtitle->source != PGSSUB)
    {

        pv->stream->subtitle.sanitizer.link = 1;
    }
    hb_buffer_list_clear(&pv->stream->subtitle.sanitizer.list_current);

    hb_list_add(common->list_work, w);

    return 0;

fail:
    if (pv != ((void*)0))
    {
        if (pv->stream != ((void*)0))
        {
            hb_list_close(&pv->stream->delta_list);
            hb_list_close(&pv->stream->in_queue);
        }
    }
    free(pv);
    free(w);

    return 1;
}
