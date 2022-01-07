
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int vos_len; scalar_t__ vos_data; } ;
typedef TYPE_1__ MOVTrack ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_RB16 (scalar_t__) ;
 int AV_RB32 (scalar_t__) ;
 int EINVAL ;
 int av_log (int *,int ,char*) ;
 int avio_tell (int *) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_dmlp_tag(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);
    int length;
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "dmlp");

    if (track->vos_len < 20) {
        av_log(s, AV_LOG_ERROR,
               "Cannot write moov atom before TrueHD packets."
               " Set the delay_moov flag to fix this.\n");
        return AVERROR(EINVAL);
    }

    length = (AV_RB16(track->vos_data) & 0xFFF) * 2;
    if (length < 20 || length > track->vos_len)
        return AVERROR_INVALIDDATA;


    if (AV_RB32(track->vos_data + 4) != 0xF8726FBA)
        return AVERROR_INVALIDDATA;

    avio_wb32(pb, AV_RB32(track->vos_data + 8));
    avio_wb16(pb, AV_RB16(track->vos_data + 18) << 1);
    avio_wb32(pb, 0);

    return update_size(pb, pos);
}
