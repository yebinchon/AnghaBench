
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ duration; scalar_t__ pts; } ;
struct TYPE_5__ {int nb_subs; scalar_t__ sort; int keep_duplicates; TYPE_2__* subs; } ;
typedef TYPE_1__ FFDemuxSubtitlesQueue ;


 scalar_t__ SUB_SORT_TS_POS ;
 int cmp_pkt_sub_pos_ts ;
 int cmp_pkt_sub_ts_pos ;
 int drop_dups (void*,TYPE_1__*) ;
 int qsort (TYPE_2__*,int,int,int ) ;

void ff_subtitles_queue_finalize(void *log_ctx, FFDemuxSubtitlesQueue *q)
{
    int i;

    if (!q->nb_subs)
        return;

    qsort(q->subs, q->nb_subs, sizeof(*q->subs),
          q->sort == SUB_SORT_TS_POS ? cmp_pkt_sub_ts_pos
                                     : cmp_pkt_sub_pos_ts);
    for (i = 0; i < q->nb_subs; i++)
        if (q->subs[i].duration < 0 && i < q->nb_subs - 1)
            q->subs[i].duration = q->subs[i + 1].pts - q->subs[i].pts;

    if (!q->keep_duplicates)
        drop_dups(log_ctx, q);
}
