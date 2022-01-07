
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {int nb_subs; TYPE_1__* subs; } ;
struct TYPE_4__ {scalar_t__ pts; } ;
typedef TYPE_2__ FFDemuxSubtitlesQueue ;


 int AVERROR (int ) ;
 int ERANGE ;

__attribute__((used)) static int search_sub_ts(const FFDemuxSubtitlesQueue *q, int64_t ts)
{
    int s1 = 0, s2 = q->nb_subs - 1;

    if (s2 < s1)
        return AVERROR(ERANGE);

    for (;;) {
        int mid;

        if (s1 == s2)
            return s1;
        if (s1 == s2 - 1)
            return q->subs[s1].pts <= q->subs[s2].pts ? s1 : s2;
        mid = (s1 + s2) / 2;
        if (q->subs[mid].pts <= ts)
            s1 = mid;
        else
            s2 = mid;
    }
}
