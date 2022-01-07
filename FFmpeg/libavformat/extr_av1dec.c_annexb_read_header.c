
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


struct TYPE_21__ {int codec_id; int codec_type; } ;
struct TYPE_20__ {TYPE_3__* priv_data; } ;
struct TYPE_19__ {TYPE_9__* codecpar; TYPE_2__* internal; int need_parsing; } ;
struct TYPE_18__ {TYPE_11__* bsf; int framerate; } ;
struct TYPE_17__ {TYPE_1__* avctx; } ;
struct TYPE_16__ {int framerate; } ;
struct TYPE_15__ {int par_in; } ;
typedef TYPE_3__ AnnexBContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVFormatContext ;
typedef int AVBitStreamFilter ;


 int AVERROR (int ) ;
 int AVERROR_BUG ;
 int AVMEDIA_TYPE_VIDEO ;
 int AVSTREAM_PARSE_HEADERS ;
 int AV_CODEC_ID_AV1 ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_bsf_alloc (int const*,TYPE_11__**) ;
 int av_bsf_free (TYPE_11__**) ;
 int * av_bsf_get_by_name (char*) ;
 int av_bsf_init (TYPE_11__*) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int avcodec_parameters_copy (int ,TYPE_9__*) ;
 TYPE_4__* avformat_new_stream (TYPE_5__*,int *) ;
 int avpriv_set_pts_info (TYPE_4__*,int,int,int) ;

__attribute__((used)) static int annexb_read_header(AVFormatContext *s)
{
    AnnexBContext *c = s->priv_data;
    const AVBitStreamFilter *filter = av_bsf_get_by_name("av1_frame_merge");
    AVStream *st;
    int ret;

    if (!filter) {
        av_log(c, AV_LOG_ERROR, "av1_frame_merge bitstream filter "
               "not found. This is a bug, please report it.\n");
        return AVERROR_BUG;
    }

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_AV1;
    st->need_parsing = AVSTREAM_PARSE_HEADERS;

    st->internal->avctx->framerate = c->framerate;

    avpriv_set_pts_info(st, 64, 1, 1200000);

    ret = av_bsf_alloc(filter, &c->bsf);
    if (ret < 0)
        return ret;

    ret = avcodec_parameters_copy(c->bsf->par_in, st->codecpar);
    if (ret < 0) {
        av_bsf_free(&c->bsf);
        return ret;
    }

    ret = av_bsf_init(c->bsf);
    if (ret < 0)
        av_bsf_free(&c->bsf);

    return ret;
}
