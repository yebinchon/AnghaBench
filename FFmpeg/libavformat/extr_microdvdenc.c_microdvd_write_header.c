
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct AVFormatContext {int nb_streams; TYPE_3__** streams; int pb; } ;
struct TYPE_4__ {int den; int num; } ;
struct TYPE_6__ {TYPE_1__ avg_frame_rate; TYPE_2__* codecpar; } ;
struct TYPE_5__ {scalar_t__ codec_id; char* extradata; int extradata_size; } ;
typedef TYPE_1__ AVRational ;
typedef TYPE_2__ AVCodecParameters ;


 scalar_t__ AV_CODEC_ID_MICRODVD ;
 int AV_LOG_ERROR ;
 int av_log (struct AVFormatContext*,int ,char*) ;
 int avio_flush (int ) ;
 int avio_write (int ,char*,int) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int ,int ) ;

__attribute__((used)) static int microdvd_write_header(struct AVFormatContext *s)
{
    AVCodecParameters *par = s->streams[0]->codecpar;
    AVRational framerate = s->streams[0]->avg_frame_rate;

    if (s->nb_streams != 1 || par->codec_id != AV_CODEC_ID_MICRODVD) {
        av_log(s, AV_LOG_ERROR, "Exactly one MicroDVD stream is needed.\n");
        return -1;
    }

    if (par->extradata && par->extradata_size > 0) {
        avio_write(s->pb, "{DEFAULT}{}", 11);
        avio_write(s->pb, par->extradata, par->extradata_size);
        avio_flush(s->pb);
    }

    avpriv_set_pts_info(s->streams[0], 64, framerate.num, framerate.den);
    return 0;
}
