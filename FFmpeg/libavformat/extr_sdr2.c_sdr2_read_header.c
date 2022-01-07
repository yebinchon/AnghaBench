
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int pb; } ;
struct TYPE_9__ {TYPE_1__* codecpar; int need_parsing; } ;
struct TYPE_8__ {int width; int height; int channels; int sample_rate; int codec_id; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AVSTREAM_PARSE_FULL ;
 int AV_CODEC_ID_H264 ;
 int AV_CODEC_ID_PCM_S16LE ;
 int ENOMEM ;
 int FIRST ;
 int SEEK_SET ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int ) ;
 int avio_rl32 (int ) ;
 int avio_seek (int ,int ,int ) ;
 int avio_skip (int ,int) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;

__attribute__((used)) static int sdr2_read_header(AVFormatContext *s)
{
    AVStream *st, *ast;

    ast = avformat_new_stream(s, 0);
    if (!ast)
        return AVERROR(ENOMEM);

    st = avformat_new_stream(s, 0);
    if (!st)
        return AVERROR(ENOMEM);

    avio_skip(s->pb, 20);
    avpriv_set_pts_info(st, 64, 1, avio_rl32(s->pb));
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->width = avio_rl32(s->pb);
    st->codecpar->height = avio_rl32(s->pb);
    st->codecpar->codec_id = AV_CODEC_ID_H264;
    st->need_parsing = AVSTREAM_PARSE_FULL;

    ast->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    ast->codecpar->channels = 1;
    ast->codecpar->sample_rate = 8000;
    ast->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE;
    avpriv_set_pts_info(ast, 64, 1, 8000);

    avio_seek(s->pb, FIRST, SEEK_SET);

    return 0;
}
