
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_11__ {TYPE_2__* pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int seekable; } ;
struct TYPE_9__ {int duration; } ;
typedef TYPE_1__ SMJPEGMuxContext ;
typedef TYPE_2__ AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVIO_SEEKABLE_NORMAL ;
 int SEEK_SET ;
 int SMJPEG_DONE ;
 int avio_seek (TYPE_2__*,int,int ) ;
 int avio_tell (TYPE_2__*) ;
 int avio_wb32 (TYPE_2__*,int ) ;
 int avio_wl32 (TYPE_2__*,int ) ;

__attribute__((used)) static int smjpeg_write_trailer(AVFormatContext *s)
{
    SMJPEGMuxContext *smc = s->priv_data;
    AVIOContext *pb = s->pb;
    int64_t currentpos;

    if (pb->seekable & AVIO_SEEKABLE_NORMAL) {
        currentpos = avio_tell(pb);
        avio_seek(pb, 12, SEEK_SET);
        avio_wb32(pb, smc->duration);
        avio_seek(pb, currentpos, SEEK_SET);
    }

    avio_wl32(pb, SMJPEG_DONE);

    return 0;
}
