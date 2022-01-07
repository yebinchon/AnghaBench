
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int pb; } ;
struct TYPE_10__ {int den; } ;
struct TYPE_12__ {int duration; TYPE_1__ time_base; TYPE_2__* codecpar; } ;
struct TYPE_11__ {int codec_id; int codec_type; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_CDGRAPHICS ;
 int AV_LOG_WARNING ;
 int CDG_PACKET_SIZE ;
 int ENOMEM ;
 int av_log (TYPE_4__*,int ,char*) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avio_size (int ) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;

__attribute__((used)) static int read_header(AVFormatContext *s)
{
    AVStream *vst;
    int ret;

    vst = avformat_new_stream(s, ((void*)0));
    if (!vst)
        return AVERROR(ENOMEM);

    vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    vst->codecpar->codec_id = AV_CODEC_ID_CDGRAPHICS;


    avpriv_set_pts_info(vst, 32, 1, 300);

    ret = avio_size(s->pb);
    if (ret < 0) {
        av_log(s, AV_LOG_WARNING, "Cannot calculate duration as file size cannot be determined\n");
    } else
        vst->duration = (ret * vst->time_base.den) / (CDG_PACKET_SIZE * 300);

    return 0;
}
