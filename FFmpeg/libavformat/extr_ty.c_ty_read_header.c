
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_12__ {TYPE_1__* codecpar; void* need_parsing; } ;
struct TYPE_11__ {scalar_t__ tivo_series; scalar_t__ audio_type; scalar_t__ tivo_type; int first_chunk; int chunk; void* last_video_pts; void* last_audio_pts; void* first_audio_pts; } ;
struct TYPE_10__ {int codec_id; int codec_type; } ;
typedef TYPE_2__ TYDemuxContext ;
typedef TYPE_3__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 void* AVSTREAM_PARSE_FULL_RAW ;
 int AV_CODEC_ID_AC3 ;
 int AV_CODEC_ID_MP2 ;
 int AV_CODEC_ID_MPEG2VIDEO ;
 void* AV_NOPTS_VALUE ;
 int CHUNK_PEEK_COUNT ;
 int CHUNK_SIZE ;
 int EIO ;
 int ENOMEM ;
 int SEEK_SET ;
 scalar_t__ TIVO_AUDIO_MPEG ;
 scalar_t__ TIVO_AUDIO_UNKNOWN ;
 scalar_t__ TIVO_SERIES_UNKNOWN ;
 scalar_t__ TIVO_TYPE_UNKNOWN ;
 int analyze_chunk (TYPE_4__*,int ) ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avio_read (int *,int ,int ) ;
 int avio_seek (int *,int ,int ) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;

__attribute__((used)) static int ty_read_header(AVFormatContext *s)
{
    TYDemuxContext *ty = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st, *ast;
    int i, ret = 0;

    ty->first_audio_pts = AV_NOPTS_VALUE;
    ty->last_audio_pts = AV_NOPTS_VALUE;
    ty->last_video_pts = AV_NOPTS_VALUE;

    for (i = 0; i < CHUNK_PEEK_COUNT; i++) {
        avio_read(pb, ty->chunk, CHUNK_SIZE);

        ret = analyze_chunk(s, ty->chunk);
        if (ret < 0)
            return ret;
        if (ty->tivo_series != TIVO_SERIES_UNKNOWN &&
            ty->audio_type != TIVO_AUDIO_UNKNOWN &&
            ty->tivo_type != TIVO_TYPE_UNKNOWN)
            break;
    }

    if (ty->tivo_series == TIVO_SERIES_UNKNOWN ||
        ty->audio_type == TIVO_AUDIO_UNKNOWN ||
        ty->tivo_type == TIVO_TYPE_UNKNOWN)
        return AVERROR(EIO);

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_MPEG2VIDEO;
    st->need_parsing = AVSTREAM_PARSE_FULL_RAW;
    avpriv_set_pts_info(st, 64, 1, 90000);

    ast = avformat_new_stream(s, ((void*)0));
    if (!ast)
        return AVERROR(ENOMEM);
    ast->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;

    if (ty->audio_type == TIVO_AUDIO_MPEG) {
        ast->codecpar->codec_id = AV_CODEC_ID_MP2;
        ast->need_parsing = AVSTREAM_PARSE_FULL_RAW;
    } else {
        ast->codecpar->codec_id = AV_CODEC_ID_AC3;
    }
    avpriv_set_pts_info(ast, 64, 1, 90000);

    ty->first_chunk = 1;

    avio_seek(pb, 0, SEEK_SET);

    return 0;
}
