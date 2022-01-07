
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_12__ {int num; int den; } ;
struct TYPE_11__ {TYPE_3__* stream; TYPE_2__* avf; } ;
struct TYPE_10__ {TYPE_1__* time_base; int last_pts; } ;
struct TYPE_9__ {int nb_streams; } ;
struct TYPE_8__ {scalar_t__ num; scalar_t__ den; } ;
typedef TYPE_4__ NUTContext ;
typedef TYPE_5__ AVRational ;


 int AV_ROUND_DOWN ;
 int av_rescale_rnd (int,int,int,int ) ;

void ff_nut_reset_ts(NUTContext *nut, AVRational time_base, int64_t val)
{
    int i;
    for (i = 0; i < nut->avf->nb_streams; i++)
        nut->stream[i].last_pts =
            av_rescale_rnd(val,
                           time_base.num * (int64_t)nut->stream[i].time_base->den,
                           time_base.den * (int64_t)nut->stream[i].time_base->num,
                           AV_ROUND_DOWN);
}
