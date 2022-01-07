
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int den; int num; } ;
struct TYPE_10__ {TYPE_1__ avg_frame_rate; TYPE_3__* codecpar; } ;
struct TYPE_9__ {scalar_t__ codec_id; int height; int width; int extradata; } ;
struct TYPE_8__ {TYPE_5__** streams; int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVCodecParameters ;


 scalar_t__ AV_CODEC_ID_WMV3 ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_2__*,int ,char*) ;
 int avio_w8 (int *,int) ;
 int avio_wl24 (int *,int ) ;
 int avio_wl32 (int *,int) ;
 int avio_write (int *,int ,int) ;
 int avpriv_set_pts_info (TYPE_5__*,int,int,int) ;

__attribute__((used)) static int vc1test_write_header(AVFormatContext *s)
{
    AVCodecParameters *par = s->streams[0]->codecpar;
    AVIOContext *pb = s->pb;

    if (par->codec_id != AV_CODEC_ID_WMV3) {
        av_log(s, AV_LOG_ERROR, "Only WMV3 is accepted!\n");
        return -1;
    }
    avio_wl24(pb, 0);
    avio_w8(pb, 0xC5);
    avio_wl32(pb, 4);
    avio_write(pb, par->extradata, 4);
    avio_wl32(pb, par->height);
    avio_wl32(pb, par->width);
    avio_wl32(pb, 0xC);
    avio_wl24(pb, 0);
    avio_w8(pb, 0x80);
    avio_wl32(pb, 0);
    if (s->streams[0]->avg_frame_rate.den && s->streams[0]->avg_frame_rate.num == 1)
        avio_wl32(pb, s->streams[0]->avg_frame_rate.den);
    else
        avio_wl32(pb, 0xFFFFFFFF);
    avpriv_set_pts_info(s->streams[0], 32, 1, 1000);

    return 0;
}
