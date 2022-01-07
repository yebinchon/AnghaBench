
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int stream; } ;
struct TYPE_9__ {int pid; int pcr_pid; void* dts; void* pts; int state; int stream; TYPE_2__* ts; } ;
typedef TYPE_1__ PESContext ;
typedef int MpegTSFilter ;
typedef TYPE_2__ MpegTSContext ;


 void* AV_NOPTS_VALUE ;
 int MPEGTS_SKIP ;
 int av_free (TYPE_1__*) ;
 TYPE_1__* av_mallocz (int) ;
 int * mpegts_open_pes_filter (TYPE_2__*,int,int ,TYPE_1__*) ;
 int mpegts_push_data ;

__attribute__((used)) static PESContext *add_pes_stream(MpegTSContext *ts, int pid, int pcr_pid)
{
    MpegTSFilter *tss;
    PESContext *pes;


    pes = av_mallocz(sizeof(PESContext));
    if (!pes)
        return 0;
    pes->ts = ts;
    pes->stream = ts->stream;
    pes->pid = pid;
    pes->pcr_pid = pcr_pid;
    pes->state = MPEGTS_SKIP;
    pes->pts = AV_NOPTS_VALUE;
    pes->dts = AV_NOPTS_VALUE;
    tss = mpegts_open_pes_filter(ts, pid, mpegts_push_data, pes);
    if (!tss) {
        av_free(pes);
        return 0;
    }
    return pes;
}
