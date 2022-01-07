
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chunk_index; TYPE_2__* avf; } ;
typedef TYPE_1__ WebMChunkContext ;
struct TYPE_5__ {int pb; TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int avio_open_dyn_buf (int *) ;

__attribute__((used)) static int chunk_start(AVFormatContext *s)
{
    WebMChunkContext *wc = s->priv_data;
    AVFormatContext *oc = wc->avf;
    int ret;

    ret = avio_open_dyn_buf(&oc->pb);
    if (ret < 0)
        return ret;
    wc->chunk_index++;
    return 0;
}
