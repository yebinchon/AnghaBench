
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {TYPE_1__* par; } ;
struct TYPE_4__ {int extradata_size; scalar_t__ extradata; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_RB8 (scalar_t__) ;
 int AV_RL16 (scalar_t__) ;
 int AV_RL32 (scalar_t__) ;
 int av_log (int *,int ,char*) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int ) ;
 int avio_wb16 (int *,int ) ;
 int avio_wb32 (int *,int ) ;
 int avio_write (int *,scalar_t__,int) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_dops_tag(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "dOps");
    avio_w8(pb, 0);
    if (track->par->extradata_size < 19) {
        av_log(s, AV_LOG_ERROR, "invalid extradata size\n");
        return AVERROR_INVALIDDATA;
    }



    avio_w8(pb, AV_RB8(track->par->extradata + 9));
    avio_wb16(pb, AV_RL16(track->par->extradata + 10));
    avio_wb32(pb, AV_RL32(track->par->extradata + 12));
    avio_wb16(pb, AV_RL16(track->par->extradata + 16));

    avio_write(pb, track->par->extradata + 18, track->par->extradata_size - 18);

    return update_size(pb, pos);
}
