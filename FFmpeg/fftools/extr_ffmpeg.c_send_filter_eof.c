
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int nb_filters; int * filters; TYPE_1__* st; int pts; } ;
struct TYPE_4__ {int time_base; } ;
typedef TYPE_2__ InputStream ;


 int AV_ROUND_NEAR_INF ;
 int AV_ROUND_PASS_MINMAX ;
 int AV_TIME_BASE_Q ;
 int av_rescale_q_rnd (int ,int ,int ,int) ;
 int ifilter_send_eof (int ,int ) ;

__attribute__((used)) static int send_filter_eof(InputStream *ist)
{
    int i, ret;

    int64_t pts = av_rescale_q_rnd(ist->pts, AV_TIME_BASE_Q, ist->st->time_base,
                                   AV_ROUND_NEAR_INF | AV_ROUND_PASS_MINMAX);

    for (i = 0; i < ist->nb_filters; i++) {
        ret = ifilter_send_eof(ist->filters[i], pts);
        if (ret < 0)
            return ret;
    }
    return 0;
}
