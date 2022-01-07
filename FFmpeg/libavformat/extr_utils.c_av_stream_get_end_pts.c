
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {TYPE_2__* internal; } ;
struct TYPE_6__ {TYPE_1__* priv_pts; } ;
struct TYPE_5__ {int val; } ;
typedef TYPE_3__ AVStream ;


 int AV_NOPTS_VALUE ;

int64_t av_stream_get_end_pts(const AVStream *st)
{
    if (st->internal->priv_pts) {
        return st->internal->priv_pts->val;
    } else
        return AV_NOPTS_VALUE;
}
