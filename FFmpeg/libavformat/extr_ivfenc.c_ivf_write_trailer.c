
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* priv_data; TYPE_2__* pb; } ;
struct TYPE_9__ {int seekable; } ;
struct TYPE_8__ {int frame_cnt; int sum_delta_pts; } ;
typedef TYPE_1__ IVFEncContext ;
typedef TYPE_2__ AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVIO_SEEKABLE_NORMAL ;
 int SEEK_SET ;
 int avio_seek (TYPE_2__*,size_t,int ) ;
 size_t avio_tell (TYPE_2__*) ;
 int avio_wl32 (TYPE_2__*,int) ;

__attribute__((used)) static int ivf_write_trailer(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    IVFEncContext *ctx = s->priv_data;

    if ((pb->seekable & AVIO_SEEKABLE_NORMAL) && ctx->frame_cnt > 1) {
        size_t end = avio_tell(pb);

        avio_seek(pb, 24, SEEK_SET);

        avio_wl32(pb, ctx->frame_cnt * ctx->sum_delta_pts / (ctx->frame_cnt - 1));
        avio_wl32(pb, 0);
        avio_seek(pb, end, SEEK_SET);
    }

    return 0;
}
