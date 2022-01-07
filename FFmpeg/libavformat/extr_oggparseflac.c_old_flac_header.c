
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
struct ogg_stream {int psize; scalar_t__ pstart; scalar_t__ buf; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_19__ {int codec_id; int codec_type; } ;
struct TYPE_18__ {scalar_t__ sample_rate; } ;
struct TYPE_17__ {int flags; } ;
struct TYPE_16__ {TYPE_1__** streams; struct ogg* priv_data; } ;
struct TYPE_15__ {TYPE_8__* codecpar; } ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVCodecParserContext ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_FLAC ;
 int AV_NOPTS_VALUE ;
 int ENOMEM ;
 int PARSER_FLAG_COMPLETE_FRAMES ;
 int av_parser_close (TYPE_3__*) ;
 TYPE_3__* av_parser_init (int ) ;
 int av_parser_parse2 (TYPE_3__*,TYPE_4__*,int **,int*,scalar_t__,int ,int ,int ,int) ;
 TYPE_4__* avcodec_alloc_context3 (int *) ;
 int avcodec_free_context (TYPE_4__**) ;
 int avcodec_parameters_to_context (TYPE_4__*,TYPE_8__*) ;
 int avpriv_set_pts_info (TYPE_1__*,int,int,scalar_t__) ;

__attribute__((used)) static int
old_flac_header (AVFormatContext * s, int idx)
{
    struct ogg *ogg = s->priv_data;
    AVStream *st = s->streams[idx];
    struct ogg_stream *os = ogg->streams + idx;
    AVCodecParserContext *parser = av_parser_init(AV_CODEC_ID_FLAC);
    AVCodecContext *avctx;
    int size, ret;
    uint8_t *data;

    if (!parser)
        return -1;

    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_FLAC;

    avctx = avcodec_alloc_context3(((void*)0));
    if (!avctx) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    ret = avcodec_parameters_to_context(avctx, st->codecpar);
    if (ret < 0)
        goto fail;

    parser->flags = PARSER_FLAG_COMPLETE_FRAMES;
    av_parser_parse2(parser, avctx,
                     &data, &size, os->buf + os->pstart, os->psize,
                     AV_NOPTS_VALUE, AV_NOPTS_VALUE, -1);

    av_parser_close(parser);

    if (avctx->sample_rate) {
        avpriv_set_pts_info(st, 64, 1, avctx->sample_rate);
        avcodec_free_context(&avctx);
        return 0;
    }

    avcodec_free_context(&avctx);
    return 1;
fail:
    av_parser_close(parser);
    avcodec_free_context(&avctx);
    return ret;
}
