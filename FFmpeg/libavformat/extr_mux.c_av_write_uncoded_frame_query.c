
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* write_uncoded_frame ) (TYPE_1__*,int,int *,int ) ;} ;
struct TYPE_5__ {TYPE_4__* oformat; } ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_WRITE_UNCODED_FRAME_QUERY ;
 int ENOSYS ;
 int av_assert0 (TYPE_4__*) ;
 int stub1 (TYPE_1__*,int,int *,int ) ;

int av_write_uncoded_frame_query(AVFormatContext *s, int stream_index)
{
    av_assert0(s->oformat);
    if (!s->oformat->write_uncoded_frame)
        return AVERROR(ENOSYS);
    return s->oformat->write_uncoded_frame(s, stream_index, ((void*)0),
                                           AV_WRITE_UNCODED_FRAME_QUERY);
}
