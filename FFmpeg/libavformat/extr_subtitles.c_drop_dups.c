
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pts; scalar_t__ duration; scalar_t__ stream_index; int data; } ;
struct TYPE_6__ {int nb_subs; TYPE_2__* subs; } ;
typedef TYPE_1__ FFDemuxSubtitlesQueue ;
typedef TYPE_2__ AVPacket ;


 int AV_LOG_WARNING ;
 int av_log (void*,int ,char*,int) ;
 int av_packet_unref (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void drop_dups(void *log_ctx, FFDemuxSubtitlesQueue *q)
{
    int i, drop = 0;

    for (i = 1; i < q->nb_subs; i++) {
        const int last_id = i - 1 - drop;
        const AVPacket *last = &q->subs[last_id];

        if (q->subs[i].pts == last->pts &&
            q->subs[i].duration == last->duration &&
            q->subs[i].stream_index == last->stream_index &&
            !strcmp(q->subs[i].data, last->data)) {

            av_packet_unref(&q->subs[i]);
            drop++;
        } else if (drop) {
            q->subs[last_id + 1] = q->subs[i];
            memset(&q->subs[i], 0, sizeof(q->subs[i]));
        }
    }

    if (drop) {
        q->nb_subs -= drop;
        av_log(log_ctx, AV_LOG_WARNING, "Dropping %d duplicated subtitle events\n", drop);
    }
}
