
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int codec_tag; } ;
struct TYPE_4__ {int tag; TYPE_3__* par; } ;
typedef TYPE_1__ MOVTrack ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int av_bswap16 (int) ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int ) ;
 int avio_wl32 (int *,int) ;
 int ff_put_wav_header (int *,int *,TYPE_3__*,int ) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_ms_tag(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    int ret;
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    avio_wl32(pb, track->tag);
    track->par->codec_tag = av_bswap16(track->tag >> 16);
    if ((ret = ff_put_wav_header(s, pb, track->par, 0)) < 0)
        return ret;
    return update_size(pb, pos);
}
