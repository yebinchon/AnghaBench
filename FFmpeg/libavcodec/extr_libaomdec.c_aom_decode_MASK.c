#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct aom_image {int d_w; int w; scalar_t__ d_h; scalar_t__ h; int fmt; int bit_depth; int /*<<< orphan*/  stride; scalar_t__ planes; } ;
struct TYPE_16__ {int /*<<< orphan*/  decoder; } ;
struct TYPE_15__ {int width; int height; int /*<<< orphan*/  pix_fmt; TYPE_4__* priv_data; } ;
struct TYPE_14__ {int /*<<< orphan*/  linesize; int /*<<< orphan*/  data; } ;
struct TYPE_13__ {int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;
typedef  TYPE_4__ AV1DecodeContext ;

/* Variables and functions */
 scalar_t__ AOM_CODEC_OK ; 
 int AOM_IMG_FMT_HIGHBITDEPTH ; 
 int AVERROR_EXTERNAL ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 struct aom_image* FUNC3 (int /*<<< orphan*/ *,void const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct aom_image*) ; 
 int FUNC9 (TYPE_3__*,struct aom_image*) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx, void *data, int *got_frame,
                      AVPacket *avpkt)
{
    AV1DecodeContext *ctx = avctx->priv_data;
    AVFrame *picture      = data;
    const void *iter      = NULL;
    struct aom_image *img;
    int ret;

    if (FUNC0(&ctx->decoder, avpkt->data, avpkt->size, NULL) !=
        AOM_CODEC_OK) {
        const char *error  = FUNC1(&ctx->decoder);
        const char *detail = FUNC2(&ctx->decoder);

        FUNC5(avctx, AV_LOG_ERROR, "Failed to decode frame: %s\n", error);
        if (detail)
            FUNC5(avctx, AV_LOG_ERROR, "  Additional information: %s\n",
                   detail);
        return AVERROR_INVALIDDATA;
    }

    if ((img = FUNC3(&ctx->decoder, &iter))) {
        if (img->d_w > img->w || img->d_h > img->h) {
            FUNC5(avctx, AV_LOG_ERROR, "Display dimensions %dx%d exceed storage %dx%d\n",
                   img->d_w, img->d_h, img->w, img->h);
            return AVERROR_EXTERNAL;
        }

        if ((ret = FUNC9(avctx, img)) < 0) {
            FUNC5(avctx, AV_LOG_ERROR, "Unsupported output colorspace (%d) / bit_depth (%d)\n",
                   img->fmt, img->bit_depth);
            return ret;
        }

        if ((int)img->d_w != avctx->width || (int)img->d_h != avctx->height) {
            FUNC5(avctx, AV_LOG_INFO, "dimension change! %dx%d -> %dx%d\n",
                   avctx->width, avctx->height, img->d_w, img->d_h);
            ret = FUNC7(avctx, img->d_w, img->d_h);
            if (ret < 0)
                return ret;
        }
        if ((ret = FUNC6(avctx, picture, 0)) < 0)
            return ret;
        if ((img->fmt & AOM_IMG_FMT_HIGHBITDEPTH) && img->bit_depth == 8)
            FUNC8(picture, img);
        else
            FUNC4(picture->data, picture->linesize, (const uint8_t **)img->planes,
                          img->stride, avctx->pix_fmt, img->d_w, img->d_h);
        *got_frame = 1;
    }
    return avpkt->size;
}