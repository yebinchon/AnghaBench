
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int tracks; } ;
typedef TYPE_1__ FourxmDemuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int *) ;

__attribute__((used)) static int fourxm_read_close(AVFormatContext *s)
{
    FourxmDemuxContext *fourxm = s->priv_data;

    av_freep(&fourxm->tracks);

    return 0;
}
