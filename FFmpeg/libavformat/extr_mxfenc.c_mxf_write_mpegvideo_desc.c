
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_12__ {int * pb; } ;
struct TYPE_11__ {TYPE_1__* codecpar; TYPE_2__* priv_data; } ;
struct TYPE_10__ {int low_delay; int seq_closed_gop; int b_picture_count; int max_gop; int video_bit_rate; } ;
struct TYPE_9__ {int profile; int level; scalar_t__ codec_id; } ;
typedef TYPE_2__ MXFStreamContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 scalar_t__ AV_CODEC_ID_H264 ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int ) ;
 int avio_wb32 (int *,int ) ;
 int mxf_mpegvideo_descriptor_key ;
 int mxf_update_klv_size (int *,int ) ;
 int mxf_write_cdci_common (TYPE_4__*,TYPE_3__*,int ) ;
 int mxf_write_local_tag (int *,int,int) ;

__attribute__((used)) static void mxf_write_mpegvideo_desc(AVFormatContext *s, AVStream *st)
{
    AVIOContext *pb = s->pb;
    MXFStreamContext *sc = st->priv_data;
    int profile_and_level = (st->codecpar->profile<<4) | st->codecpar->level;
    int64_t pos = mxf_write_cdci_common(s, st, mxf_mpegvideo_descriptor_key);

    if (st->codecpar->codec_id != AV_CODEC_ID_H264) {

        mxf_write_local_tag(pb, 4, 0x8000);
        avio_wb32(pb, sc->video_bit_rate);


        mxf_write_local_tag(pb, 1, 0x8007);
        if (!st->codecpar->profile)
            profile_and_level |= 0x80;
        avio_w8(pb, profile_and_level);


        mxf_write_local_tag(pb, 1, 0x8003);
        avio_w8(pb, sc->low_delay);


        mxf_write_local_tag(pb, 1, 0x8004);
        avio_w8(pb, sc->seq_closed_gop);


        mxf_write_local_tag(pb, 2, 0x8006);
        avio_wb16(pb, sc->max_gop);


        mxf_write_local_tag(pb, 2, 0x8008);
        avio_wb16(pb, sc->b_picture_count);
    }

    mxf_update_klv_size(pb, pos);
}
