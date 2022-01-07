
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int searchstr; int boundary; } ;
typedef TYPE_1__ MPJPEGDemuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int *) ;

__attribute__((used)) static int mpjpeg_read_close(AVFormatContext *s)
{
    MPJPEGDemuxContext *mpjpeg = s->priv_data;
    av_freep(&mpjpeg->boundary);
    av_freep(&mpjpeg->searchstr);
    return 0;
}
