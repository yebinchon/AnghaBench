
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pb; TYPE_1__* iformat; } ;
struct TYPE_5__ {int (* read_pause ) (TYPE_2__*) ;} ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int avio_pause (scalar_t__,int) ;
 int stub1 (TYPE_2__*) ;

int av_read_pause(AVFormatContext *s)
{
    if (s->iformat->read_pause)
        return s->iformat->read_pause(s);
    if (s->pb)
        return avio_pause(s->pb, 1);
    return AVERROR(ENOSYS);
}
