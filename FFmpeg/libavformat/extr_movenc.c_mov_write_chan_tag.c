
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_5__ {scalar_t__ multichannel_as_mono; TYPE_1__* par; } ;
struct TYPE_4__ {int channel_layout; int codec_id; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AV_LOG_WARNING ;
 int av_log (int *,int ,char*) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int ) ;
 int avio_wb24 (int *,int ) ;
 int avio_wb32 (int *,int ) ;
 int ff_mov_get_channel_layout_tag (int ,int ,int *) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_chan_tag(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    uint32_t layout_tag, bitmap;
    int64_t pos = avio_tell(pb);

    layout_tag = ff_mov_get_channel_layout_tag(track->par->codec_id,
                                               track->par->channel_layout,
                                               &bitmap);
    if (!layout_tag) {
        av_log(s, AV_LOG_WARNING, "not writing 'chan' tag due to "
               "lack of channel information\n");
        return 0;
    }

    if (track->multichannel_as_mono)
        return 0;

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "chan");
    avio_w8(pb, 0);
    avio_wb24(pb, 0);
    avio_wb32(pb, layout_tag);
    avio_wb32(pb, bitmap);
    avio_wb32(pb, 0);

    return update_size(pb, pos);
}
