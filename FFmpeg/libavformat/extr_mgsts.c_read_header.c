
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_13__ {int * pb; } ;
struct TYPE_12__ {int num; int den; } ;
struct TYPE_11__ {TYPE_1__* codecpar; void* duration; void* nb_frames; scalar_t__ start_time; int need_parsing; } ;
struct TYPE_10__ {void* codec_tag; int codec_id; int codec_type; void* height; void* width; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVRational ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_VIDEO ;
 int AVSTREAM_PARSE_HEADERS ;
 int EIO ;
 int ENOMEM ;
 int INT_MAX ;
 TYPE_3__ av_d2q (int ,int ) ;
 int av_int2float (void*) ;
 TYPE_2__* avformat_new_stream (TYPE_4__*,int ) ;
 void* avio_rb32 (int *) ;
 int avio_skip (int *,int) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int ,int ) ;
 int ff_codec_bmp_tags ;
 int ff_codec_get_id (int ,void*) ;

__attribute__((used)) static int read_header(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    AVStream *st;
    AVRational fps;
    uint32_t chunk_size;

    avio_skip(pb, 4);
    chunk_size = avio_rb32(pb);
    if (chunk_size != 80)
        return AVERROR(EIO);
    avio_skip(pb, 20);

    st = avformat_new_stream(s, 0);
    if (!st)
        return AVERROR(ENOMEM);

    st->need_parsing = AVSTREAM_PARSE_HEADERS;
    st->start_time = 0;
    st->nb_frames =
    st->duration = avio_rb32(pb);
    fps = av_d2q(av_int2float(avio_rb32(pb)), INT_MAX);
    st->codecpar->width = avio_rb32(pb);
    st->codecpar->height = avio_rb32(pb);
    avio_skip(pb, 12);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_tag = avio_rb32(pb);
    st->codecpar->codec_id = ff_codec_get_id(ff_codec_bmp_tags,
                                               st->codecpar->codec_tag);
    avpriv_set_pts_info(st, 64, fps.den, fps.num);
    avio_skip(pb, 20);

    return 0;
}
