
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int audio; } ;
typedef TYPE_1__ XMVDemuxContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int *) ;

__attribute__((used)) static int xmv_read_close(AVFormatContext *s)
{
    XMVDemuxContext *xmv = s->priv_data;

    av_freep(&xmv->audio);

    return 0;
}
