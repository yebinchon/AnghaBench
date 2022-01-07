
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* need_parsing; TYPE_1__* codecpar; } ;
struct TYPE_5__ {int codec_id; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 void* AVSTREAM_PARSE_HEADERS ;
 int AV_CODEC_ID_MP2 ;
 int AV_CODEC_ID_MPEG4 ;
 int ENOMEM ;
 TYPE_2__* avformat_new_stream (int *,int *) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;

__attribute__((used)) static int lmlm4_read_header(AVFormatContext *s)
{
    AVStream *st;

    if (!(st = avformat_new_stream(s, ((void*)0))))
        return AVERROR(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_MPEG4;
    st->need_parsing = AVSTREAM_PARSE_HEADERS;
    avpriv_set_pts_info(st, 64, 1001, 30000);

    if (!(st = avformat_new_stream(s, ((void*)0))))
        return AVERROR(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_MP2;
    st->need_parsing = AVSTREAM_PARSE_HEADERS;


    return 0;
}
