
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ codec_id; } ;
struct TYPE_8__ {int nb_streams; int * pb; TYPE_1__** streams; } ;
struct TYPE_7__ {TYPE_3__* codecpar; } ;
typedef TYPE_1__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVCodecParameters ;


 int AVERROR (int ) ;
 scalar_t__ AV_CODEC_ID_WEBVTT ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_2__*,int ,char*) ;
 int avio_flush (int *) ;
 int avio_printf (int *,char*) ;
 int avpriv_set_pts_info (TYPE_1__*,int,int,int) ;

__attribute__((used)) static int webvtt_write_header(AVFormatContext *ctx)
{
    AVStream *s = ctx->streams[0];
    AVCodecParameters *par = ctx->streams[0]->codecpar;
    AVIOContext *pb = ctx->pb;

    if (ctx->nb_streams != 1 || par->codec_id != AV_CODEC_ID_WEBVTT) {
        av_log(ctx, AV_LOG_ERROR, "Exactly one WebVTT stream is needed.\n");
        return AVERROR(EINVAL);
    }

    avpriv_set_pts_info(s, 64, 1, 1000);

    avio_printf(pb, "WEBVTT\n");
    avio_flush(pb);

    return 0;
}
