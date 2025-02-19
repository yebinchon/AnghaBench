
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int nb_streams; TYPE_2__** streams; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {scalar_t__ codec_id; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_CODEC_ID_WEBP ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_3__*,int ,char*) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;

__attribute__((used)) static int webp_write_header(AVFormatContext *s)
{
    AVStream *st;

    if (s->nb_streams != 1) {
        av_log(s, AV_LOG_ERROR, "Only exactly 1 stream is supported\n");
        return AVERROR(EINVAL);
    }
    st = s->streams[0];
    if (st->codecpar->codec_id != AV_CODEC_ID_WEBP) {
        av_log(s, AV_LOG_ERROR, "Only WebP is supported\n");
        return AVERROR(EINVAL);
    }
    avpriv_set_pts_info(st, 24, 1, 1000);

    return 0;
}
