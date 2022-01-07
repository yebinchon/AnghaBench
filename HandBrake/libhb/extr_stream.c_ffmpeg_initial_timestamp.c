
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {TYPE_2__* ffmpeg_ic; } ;
typedef TYPE_1__ hb_stream_t ;
struct TYPE_5__ {scalar_t__ start_time; } ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ AV_NOPTS_VALUE ;

int64_t ffmpeg_initial_timestamp( hb_stream_t * stream )
{
    AVFormatContext *ic = stream->ffmpeg_ic;
    if (ic->start_time != AV_NOPTS_VALUE)
        return ic->start_time;
    else
        return 0;
}
