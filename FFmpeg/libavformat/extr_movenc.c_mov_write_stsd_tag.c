
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_11__ {TYPE_1__* par; } ;
struct TYPE_10__ {scalar_t__ codec_type; scalar_t__ codec_tag; } ;
typedef TYPE_2__ MOVTrack ;
typedef int MOVMuxContext ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 scalar_t__ MKTAG (char,char,char,char) ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int mov_write_audio_tag (int *,int *,int *,TYPE_2__*) ;
 int mov_write_gpmd_tag (int *,TYPE_2__*) ;
 int mov_write_rtp_tag (int *,TYPE_2__*) ;
 int mov_write_subtitle_tag (int *,TYPE_2__*) ;
 int mov_write_tmcd_tag (int *,TYPE_2__*) ;
 int mov_write_video_tag (int *,int *,int *,TYPE_2__*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_stsd_tag(AVFormatContext *s, AVIOContext *pb, MOVMuxContext *mov, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);
    int ret = 0;
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "stsd");
    avio_wb32(pb, 0);
    avio_wb32(pb, 1);
    if (track->par->codec_type == AVMEDIA_TYPE_VIDEO)
        ret = mov_write_video_tag(s, pb, mov, track);
    else if (track->par->codec_type == AVMEDIA_TYPE_AUDIO)
        ret = mov_write_audio_tag(s, pb, mov, track);
    else if (track->par->codec_type == AVMEDIA_TYPE_SUBTITLE)
        ret = mov_write_subtitle_tag(pb, track);
    else if (track->par->codec_tag == MKTAG('r','t','p',' '))
        ret = mov_write_rtp_tag(pb, track);
    else if (track->par->codec_tag == MKTAG('t','m','c','d'))
        ret = mov_write_tmcd_tag(pb, track);
    else if (track->par->codec_tag == MKTAG('g','p','m','d'))
        ret = mov_write_gpmd_tag(pb, track);

    if (ret < 0)
        return ret;

    return update_size(pb, pos);
}
