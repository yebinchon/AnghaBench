
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int num; int den; } ;
struct TYPE_7__ {TYPE_2__ time_base; TYPE_1__* codecpar; } ;
struct TYPE_5__ {int sample_rate; } ;
typedef TYPE_3__ AVStream ;


 int av_rescale (int ,int,int ) ;

__attribute__((used)) static int64_t ts_to_samples(AVStream *st, int64_t ts)
{
    return av_rescale(ts, st->time_base.num * st->codecpar->sample_rate, st->time_base.den);
}
