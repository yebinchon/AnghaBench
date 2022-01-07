
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_26__ {int args; TYPE_15__* filter; TYPE_2__* priv_data; } ;
struct TYPE_25__ {int extradata_size; int * extradata; int time_base; } ;
struct TYPE_24__ {char* name; } ;
struct TYPE_23__ {int size; int * data; int member_0; } ;
struct TYPE_22__ {int extradata_updated; TYPE_10__* ctx; } ;
struct TYPE_21__ {int extradata_size; int * extradata; } ;
struct TYPE_20__ {scalar_t__ priv_class; } ;
struct TYPE_19__ {TYPE_1__* par_out; int priv_data; int time_base_in; int par_in; } ;
typedef TYPE_2__ BSFCompatContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVOption ;
typedef TYPE_5__ AVCodecContext ;
typedef TYPE_6__ AVBitStreamFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int EAGAIN ;
 int ENOMEM ;
 int av_bsf_alloc (TYPE_15__*,TYPE_10__**) ;
 int av_bsf_init (TYPE_10__*) ;
 int av_bsf_receive_packet (TYPE_10__*,TYPE_3__*) ;
 int av_bsf_send_packet (TYPE_10__*,TYPE_3__*) ;
 int av_freep (int **) ;
 int * av_malloc (scalar_t__) ;
 int * av_mallocz (scalar_t__) ;
 TYPE_4__* av_opt_next (int ,int *) ;
 int av_opt_set_from_string (int ,int ,char const**,char*,char*) ;
 int av_packet_unref (TYPE_3__*) ;
 int avcodec_parameters_from_context (int ,TYPE_5__*) ;
 int memcpy (int *,int *,int) ;
 int strstr (char const*,char*) ;

int av_bitstream_filter_filter(AVBitStreamFilterContext *bsfc,
                               AVCodecContext *avctx, const char *args,
                               uint8_t **poutbuf, int *poutbuf_size,
                               const uint8_t *buf, int buf_size, int keyframe)
{
    BSFCompatContext *priv = bsfc->priv_data;
    AVPacket pkt = { 0 };
    int ret;

    if (!priv->ctx) {
        ret = av_bsf_alloc(bsfc->filter, &priv->ctx);
        if (ret < 0)
            return ret;

        ret = avcodec_parameters_from_context(priv->ctx->par_in, avctx);
        if (ret < 0)
            return ret;

        priv->ctx->time_base_in = avctx->time_base;

        if (bsfc->args && bsfc->filter->priv_class) {
            const AVOption *opt = av_opt_next(priv->ctx->priv_data, ((void*)0));
            const char * shorthand[2] = {((void*)0)};

            if (opt)
                shorthand[0] = opt->name;

            ret = av_opt_set_from_string(priv->ctx->priv_data, bsfc->args, shorthand, "=", ":");
            if (ret < 0)
                return ret;
        }

        ret = av_bsf_init(priv->ctx);
        if (ret < 0)
            return ret;
    }

    pkt.data = (uint8_t *)buf;
    pkt.size = buf_size;

    ret = av_bsf_send_packet(priv->ctx, &pkt);
    if (ret < 0)
        return ret;

    *poutbuf = ((void*)0);
    *poutbuf_size = 0;

    ret = av_bsf_receive_packet(priv->ctx, &pkt);
    if (ret == AVERROR(EAGAIN) || ret == AVERROR_EOF)
        return 0;
    else if (ret < 0)
        return ret;

    *poutbuf = av_malloc(pkt.size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!*poutbuf) {
        av_packet_unref(&pkt);
        return AVERROR(ENOMEM);
    }

    *poutbuf_size = pkt.size;
    memcpy(*poutbuf, pkt.data, pkt.size);

    av_packet_unref(&pkt);


    while (ret >= 0) {
        ret = av_bsf_receive_packet(priv->ctx, &pkt);
        av_packet_unref(&pkt);
    }

    if (!priv->extradata_updated) {

        if (priv->ctx->par_out->extradata_size && (!args || !strstr(args, "private_spspps_buf"))) {
            av_freep(&avctx->extradata);
            avctx->extradata_size = 0;
            avctx->extradata = av_mallocz(priv->ctx->par_out->extradata_size + AV_INPUT_BUFFER_PADDING_SIZE);
            if (!avctx->extradata)
                return AVERROR(ENOMEM);
            memcpy(avctx->extradata, priv->ctx->par_out->extradata, priv->ctx->par_out->extradata_size);
            avctx->extradata_size = priv->ctx->par_out->extradata_size;
        }

        priv->extradata_updated = 1;
    }

    return 1;
}
