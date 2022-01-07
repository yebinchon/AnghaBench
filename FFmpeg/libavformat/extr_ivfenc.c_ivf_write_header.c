
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ codec_type; scalar_t__ codec_id; int width; int height; } ;
struct TYPE_9__ {int nb_streams; TYPE_2__** streams; int * pb; } ;
struct TYPE_7__ {int num; int den; } ;
struct TYPE_8__ {TYPE_1__ time_base; TYPE_4__* codecpar; } ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 int AVERROR (int ) ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 scalar_t__ AV_CODEC_ID_AV1 ;
 scalar_t__ AV_CODEC_ID_VP8 ;
 scalar_t__ AV_CODEC_ID_VP9 ;
 int AV_LOG_ERROR ;
 int AV_RL32 (char*) ;
 int EINVAL ;
 int av_log (TYPE_3__*,int ,char*) ;
 int avio_wl16 (int *,int) ;
 int avio_wl32 (int *,int ) ;
 int avio_wl64 (int *,int) ;
 int avio_write (int *,char*,int) ;

__attribute__((used)) static int ivf_write_header(AVFormatContext *s)
{
    AVCodecParameters *par;
    AVIOContext *pb = s->pb;

    if (s->nb_streams != 1) {
        av_log(s, AV_LOG_ERROR, "Format supports only exactly one video stream\n");
        return AVERROR(EINVAL);
    }
    par = s->streams[0]->codecpar;
    if (par->codec_type != AVMEDIA_TYPE_VIDEO ||
        !(par->codec_id == AV_CODEC_ID_AV1 ||
          par->codec_id == AV_CODEC_ID_VP8 ||
          par->codec_id == AV_CODEC_ID_VP9)) {
        av_log(s, AV_LOG_ERROR, "Currently only VP8, VP9 and AV1 are supported!\n");
        return AVERROR(EINVAL);
    }
    avio_write(pb, "DKIF", 4);
    avio_wl16(pb, 0);
    avio_wl16(pb, 32);
    avio_wl32(pb,
              par->codec_id == AV_CODEC_ID_VP9 ? AV_RL32("VP90") :
              par->codec_id == AV_CODEC_ID_VP8 ? AV_RL32("VP80") : AV_RL32("AV01"));
    avio_wl16(pb, par->width);
    avio_wl16(pb, par->height);
    avio_wl32(pb, s->streams[0]->time_base.den);
    avio_wl32(pb, s->streams[0]->time_base.num);
    avio_wl64(pb, 0xFFFFFFFFFFFFFFFFULL);

    return 0;
}
