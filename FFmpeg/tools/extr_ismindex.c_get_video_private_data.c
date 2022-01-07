
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct Track {int codec_private; int codec_private_size; } ;
struct TYPE_4__ {scalar_t__ codec_id; int extradata_size; int* extradata; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVCodecParameters ;


 int AVERROR (int ) ;
 scalar_t__ AV_CODEC_ID_VC1 ;
 int AV_RB16 (int*) ;
 int EINVAL ;
 int avio_close_dyn_buf (int *,int *) ;
 int avio_open_dyn_buf (int **) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,int*,int) ;
 int get_private_data (struct Track*,TYPE_1__*) ;

__attribute__((used)) static int get_video_private_data(struct Track *track, AVCodecParameters *codecpar)
{
    AVIOContext *io = ((void*)0);
    uint16_t sps_size, pps_size;
    int err;

    if (codecpar->codec_id == AV_CODEC_ID_VC1)
        return get_private_data(track, codecpar);

    if ((err = avio_open_dyn_buf(&io)) < 0)
        goto fail;
    err = AVERROR(EINVAL);
    if (codecpar->extradata_size < 11 || codecpar->extradata[0] != 1)
        goto fail;
    sps_size = AV_RB16(&codecpar->extradata[6]);
    if (11 + sps_size > codecpar->extradata_size)
        goto fail;
    avio_wb32(io, 0x00000001);
    avio_write(io, &codecpar->extradata[8], sps_size);
    pps_size = AV_RB16(&codecpar->extradata[9 + sps_size]);
    if (11 + sps_size + pps_size > codecpar->extradata_size)
        goto fail;
    avio_wb32(io, 0x00000001);
    avio_write(io, &codecpar->extradata[11 + sps_size], pps_size);
    err = 0;

fail:
    track->codec_private_size = avio_close_dyn_buf(io, &track->codec_private);
    return err;
}
