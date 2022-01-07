
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int buf ;
struct TYPE_6__ {int * streams; } ;
struct TYPE_5__ {int track_id; int src_track; TYPE_2__* rtp_ctx; } ;
typedef TYPE_1__ MOVTrack ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int av_strlcatf (char*,int,char*,int ) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,char*,int) ;
 int ff_sdp_write_media (char*,int,int ,int ,int *,int *,int ,int ,TYPE_2__*) ;
 int ffio_wfourcc (int *,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int mov_write_udta_sdp(AVIOContext *pb, MOVTrack *track)
{
    AVFormatContext *ctx = track->rtp_ctx;
    char buf[1000] = "";
    int len;

    ff_sdp_write_media(buf, sizeof(buf), ctx->streams[0], track->src_track,
                       ((void*)0), ((void*)0), 0, 0, ctx);
    av_strlcatf(buf, sizeof(buf), "a=control:streamid=%d\r\n", track->track_id);
    len = strlen(buf);

    avio_wb32(pb, len + 24);
    ffio_wfourcc(pb, "udta");
    avio_wb32(pb, len + 16);
    ffio_wfourcc(pb, "hnti");
    avio_wb32(pb, len + 8);
    ffio_wfourcc(pb, "sdp ");
    avio_write(pb, buf, len);
    return len + 24;
}
