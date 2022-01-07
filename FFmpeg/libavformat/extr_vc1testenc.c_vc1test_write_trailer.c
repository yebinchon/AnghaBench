
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* pb; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int seekable; } ;
struct TYPE_8__ {int frames; } ;
typedef TYPE_1__ RCVContext ;
typedef TYPE_2__ AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVIO_SEEKABLE_NORMAL ;
 int SEEK_SET ;
 int avio_flush (TYPE_2__*) ;
 int avio_seek (TYPE_2__*,int ,int ) ;
 int avio_wl24 (TYPE_2__*,int ) ;

__attribute__((used)) static int vc1test_write_trailer(AVFormatContext *s)
{
    RCVContext *ctx = s->priv_data;
    AVIOContext *pb = s->pb;

    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL) {
        avio_seek(pb, 0, SEEK_SET);
        avio_wl24(pb, ctx->frames);
        avio_flush(pb);
    }
    return 0;
}
