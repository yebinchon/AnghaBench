
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sb_entries; int sb_blocks; int sb_buf; int sb_pb; } ;
typedef TYPE_1__ VividasDemuxContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int av_freep (int *) ;

__attribute__((used)) static int viv_read_close(AVFormatContext *s)
{
    VividasDemuxContext *viv = s->priv_data;

    av_freep(&viv->sb_pb);
    av_freep(&viv->sb_buf);
    av_freep(&viv->sb_blocks);
    av_freep(&viv->sb_entries);

    return 0;
}
