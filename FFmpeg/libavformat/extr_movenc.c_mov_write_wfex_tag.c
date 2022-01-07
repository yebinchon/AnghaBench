
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {TYPE_1__* st; } ;
struct TYPE_4__ {int codecpar; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int FF_PUT_WAV_HEADER_FORCE_WAVEFORMATEX ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int ) ;
 int ff_put_wav_header (int *,int *,int ,int ) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_wfex_tag(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    int ret;
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "wfex");
    if ((ret = ff_put_wav_header(s, pb, track->st->codecpar, FF_PUT_WAV_HEADER_FORCE_WAVEFORMATEX)) < 0)
        return ret;
    return update_size(pb, pos);
}
