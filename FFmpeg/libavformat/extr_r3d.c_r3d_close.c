
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int video_offsets; } ;
typedef TYPE_1__ R3DContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int *) ;

__attribute__((used)) static int r3d_close(AVFormatContext *s)
{
    R3DContext *r3d = s->priv_data;

    av_freep(&r3d->video_offsets);

    return 0;
}
