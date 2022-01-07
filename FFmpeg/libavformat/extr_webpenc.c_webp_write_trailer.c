
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int frame_count; scalar_t__ loop; scalar_t__ using_webp_anim_encoder; } ;
typedef TYPE_1__ WebpContext ;
struct TYPE_6__ {int pb; TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int AV_NOPTS_VALUE ;
 int SEEK_SET ;
 int avio_seek (int ,unsigned int,int ) ;
 unsigned int avio_tell (int ) ;
 int avio_wl16 (int ,scalar_t__) ;
 int avio_wl32 (int ,unsigned int) ;
 int flush (TYPE_2__*,int,int ) ;

__attribute__((used)) static int webp_write_trailer(AVFormatContext *s)
{
    unsigned filesize;
    WebpContext *w = s->priv_data;

    if (w->using_webp_anim_encoder) {
        if ((w->frame_count > 1) && w->loop) {
            avio_seek(s->pb, 42, SEEK_SET);
            avio_wl16(s->pb, w->loop);
        }
    } else {
        int ret;
        if ((ret = flush(s, 1, AV_NOPTS_VALUE)) < 0)
            return ret;

        filesize = avio_tell(s->pb);
        avio_seek(s->pb, 4, SEEK_SET);
        avio_wl32(s->pb, filesize - 8);

        avio_seek(s->pb, filesize, SEEK_SET);
    }

    return 0;
}
