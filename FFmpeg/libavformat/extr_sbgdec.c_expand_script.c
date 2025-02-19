
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbg_script {int nb_tseq; int nb_events; TYPE_1__* events; int end_ts; scalar_t__ opt_end_at_last; int * tseq; } ;
struct TYPE_2__ {int ts; } ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (void*,int ,char*) ;
 int expand_timestamps (void*,struct sbg_script*) ;
 int expand_tseq (void*,struct sbg_script*,int*,int ,int *) ;

__attribute__((used)) static int expand_script(void *log, struct sbg_script *s)
{
    int i, r, nb_events_max = 0;

    expand_timestamps(log, s);
    for (i = 0; i < s->nb_tseq; i++) {
        r = expand_tseq(log, s, &nb_events_max, 0, &s->tseq[i]);
        if (r < 0)
            return r;
    }
    if (!s->nb_events) {
        av_log(log, AV_LOG_ERROR, "No events in script\n");
        return AVERROR_INVALIDDATA;
    }
    if (s->opt_end_at_last)
        s->end_ts = s->events[s->nb_events - 1].ts;
    return 0;
}
