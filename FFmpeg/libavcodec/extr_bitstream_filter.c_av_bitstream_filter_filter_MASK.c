#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_15__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_26__ {int /*<<< orphan*/  args; TYPE_15__* filter; TYPE_2__* priv_data; } ;
struct TYPE_25__ {int extradata_size; int /*<<< orphan*/ * extradata; int /*<<< orphan*/  time_base; } ;
struct TYPE_24__ {char* name; } ;
struct TYPE_23__ {int size; int /*<<< orphan*/ * data; int /*<<< orphan*/  member_0; } ;
struct TYPE_22__ {int extradata_updated; TYPE_10__* ctx; } ;
struct TYPE_21__ {int extradata_size; int /*<<< orphan*/ * extradata; } ;
struct TYPE_20__ {scalar_t__ priv_class; } ;
struct TYPE_19__ {TYPE_1__* par_out; int /*<<< orphan*/  priv_data; int /*<<< orphan*/  time_base_in; int /*<<< orphan*/  par_in; } ;
typedef  TYPE_2__ BSFCompatContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVOption ;
typedef  TYPE_5__ AVCodecContext ;
typedef  TYPE_6__ AVBitStreamFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (TYPE_15__*,TYPE_10__**) ; 
 int FUNC2 (TYPE_10__*) ; 
 int FUNC3 (TYPE_10__*,TYPE_3__*) ; 
 int FUNC4 (TYPE_10__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char*) ; 

int FUNC14(AVBitStreamFilterContext *bsfc,
                               AVCodecContext *avctx, const char *args,
                               uint8_t **poutbuf, int *poutbuf_size,
                               const uint8_t *buf, int buf_size, int keyframe)
{
    BSFCompatContext *priv = bsfc->priv_data;
    AVPacket pkt = { 0 };
    int ret;

    if (!priv->ctx) {
        ret = FUNC1(bsfc->filter, &priv->ctx);
        if (ret < 0)
            return ret;

        ret = FUNC11(priv->ctx->par_in, avctx);
        if (ret < 0)
            return ret;

        priv->ctx->time_base_in = avctx->time_base;

        if (bsfc->args && bsfc->filter->priv_class) {
            const AVOption *opt = FUNC8(priv->ctx->priv_data, NULL);
            const char * shorthand[2] = {NULL};

            if (opt)
                shorthand[0] = opt->name;

            ret = FUNC9(priv->ctx->priv_data, bsfc->args, shorthand, "=", ":");
            if (ret < 0)
                return ret;
        }

        ret = FUNC2(priv->ctx);
        if (ret < 0)
            return ret;
    }

    pkt.data = (uint8_t *)buf;
    pkt.size = buf_size;

    ret = FUNC4(priv->ctx, &pkt);
    if (ret < 0)
        return ret;

    *poutbuf      = NULL;
    *poutbuf_size = 0;

    ret = FUNC3(priv->ctx, &pkt);
    if (ret == FUNC0(EAGAIN) || ret == AVERROR_EOF)
        return 0;
    else if (ret < 0)
        return ret;

    *poutbuf = FUNC6(pkt.size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!*poutbuf) {
        FUNC10(&pkt);
        return FUNC0(ENOMEM);
    }

    *poutbuf_size = pkt.size;
    FUNC12(*poutbuf, pkt.data, pkt.size);

    FUNC10(&pkt);

    /* drain all the remaining packets we cannot return */
    while (ret >= 0) {
        ret = FUNC3(priv->ctx, &pkt);
        FUNC10(&pkt);
    }

    if (!priv->extradata_updated) {
        /* update extradata in avctx from the output codec parameters */
        if (priv->ctx->par_out->extradata_size && (!args || !FUNC13(args, "private_spspps_buf"))) {
            FUNC5(&avctx->extradata);
            avctx->extradata_size = 0;
            avctx->extradata = FUNC7(priv->ctx->par_out->extradata_size + AV_INPUT_BUFFER_PADDING_SIZE);
            if (!avctx->extradata)
                return FUNC0(ENOMEM);
            FUNC12(avctx->extradata, priv->ctx->par_out->extradata, priv->ctx->par_out->extradata_size);
            avctx->extradata_size = priv->ctx->par_out->extradata_size;
        }

        priv->extradata_updated = 1;
    }

    return 1;
}