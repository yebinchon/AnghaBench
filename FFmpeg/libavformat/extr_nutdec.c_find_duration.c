
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {int duration_estimation_method; } ;
struct TYPE_5__ {TYPE_2__* avf; } ;
typedef TYPE_1__ NUTContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVFMT_DURATION_FROM_PTS ;
 int ff_find_last_ts (TYPE_2__*,int,scalar_t__*,int *,int ) ;
 int nut_read_timestamp ;

__attribute__((used)) static int64_t find_duration(NUTContext *nut, int64_t filesize)
{
    AVFormatContext *s = nut->avf;
    int64_t duration = 0;

    ff_find_last_ts(s, -1, &duration, ((void*)0), nut_read_timestamp);

    if(duration > 0)
        s->duration_estimation_method = AVFMT_DURATION_FROM_PTS;
    return duration;
}
