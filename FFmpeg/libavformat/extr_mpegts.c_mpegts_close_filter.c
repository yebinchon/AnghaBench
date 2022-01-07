
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int ** pids; } ;
struct TYPE_12__ {TYPE_4__* opaque; } ;
struct TYPE_11__ {TYPE_4__* section_buf; } ;
struct TYPE_13__ {TYPE_2__ pes_filter; TYPE_1__ section_filter; } ;
struct TYPE_15__ {int pid; scalar_t__ type; TYPE_3__ u; } ;
struct TYPE_14__ {scalar_t__ merged_st; int st; int buffer; } ;
typedef TYPE_4__ PESContext ;
typedef TYPE_5__ MpegTSFilter ;
typedef TYPE_6__ MpegTSContext ;


 scalar_t__ MPEGTS_PES ;
 scalar_t__ MPEGTS_SECTION ;
 int av_buffer_unref (int *) ;
 int av_free (TYPE_5__*) ;
 int av_freep (TYPE_4__**) ;

__attribute__((used)) static void mpegts_close_filter(MpegTSContext *ts, MpegTSFilter *filter)
{
    int pid;

    pid = filter->pid;
    if (filter->type == MPEGTS_SECTION)
        av_freep(&filter->u.section_filter.section_buf);
    else if (filter->type == MPEGTS_PES) {
        PESContext *pes = filter->u.pes_filter.opaque;
        av_buffer_unref(&pes->buffer);


        if (!pes->st || pes->merged_st) {
            av_freep(&filter->u.pes_filter.opaque);
        }
    }

    av_free(filter);
    ts->pids[pid] = ((void*)0);
}
