
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {int nb_streams; TYPE_4__** streams; } ;
struct TYPE_6__ {scalar_t__ codec_type; scalar_t__ codec_id; } ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 scalar_t__ AV_CODEC_ID_GIF ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_2__*,int ,char*) ;
 int avpriv_set_pts_info (TYPE_4__*,int,int,int) ;

__attribute__((used)) static int gif_write_header(AVFormatContext *s)
{
    if (s->nb_streams != 1 ||
        s->streams[0]->codecpar->codec_type != AVMEDIA_TYPE_VIDEO ||
        s->streams[0]->codecpar->codec_id != AV_CODEC_ID_GIF) {
        av_log(s, AV_LOG_ERROR,
               "GIF muxer supports only a single video GIF stream.\n");
        return AVERROR(EINVAL);
    }

    avpriv_set_pts_info(s->streams[0], 64, 1, 100);

    return 0;
}
