
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_14__ {int stream_index; int pts; int dts; } ;
struct TYPE_13__ {int pcr_pid; scalar_t__ discard; } ;
struct TYPE_12__ {int stop_parse; TYPE_7__* pkt; TYPE_3__** pids; int stream; } ;
struct TYPE_9__ {TYPE_4__* opaque; } ;
struct TYPE_10__ {TYPE_1__ section_filter; } ;
struct TYPE_11__ {int last_pcr; int pid; TYPE_2__ u; } ;
typedef TYPE_3__ MpegTSFilter ;
typedef TYPE_4__ MpegTSContext ;
typedef TYPE_5__ AVProgram ;


 scalar_t__ AVDISCARD_ALL ;
 TYPE_5__* av_find_program_from_stream (int ,int *,int) ;
 int ff_find_stream_index (int ,int ) ;
 int new_data_packet (int const*,int,TYPE_7__*) ;

__attribute__((used)) static void scte_data_cb(MpegTSFilter *filter, const uint8_t *section,
                    int section_len)
{
    AVProgram *prg = ((void*)0);
    MpegTSContext *ts = filter->u.section_filter.opaque;

    int idx = ff_find_stream_index(ts->stream, filter->pid);
    if (idx < 0)
        return;





    if (!ts->pkt)
        return;

    new_data_packet(section, section_len, ts->pkt);
    ts->pkt->stream_index = idx;
    prg = av_find_program_from_stream(ts->stream, ((void*)0), idx);
    if (prg && prg->pcr_pid != -1 && prg->discard != AVDISCARD_ALL) {
        MpegTSFilter *f = ts->pids[prg->pcr_pid];
        if (f && f->last_pcr != -1)
            ts->pkt->pts = ts->pkt->dts = f->last_pcr/300;
    }
    ts->stop_parse = 1;

}
