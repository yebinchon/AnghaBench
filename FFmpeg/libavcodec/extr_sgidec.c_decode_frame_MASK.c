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
struct TYPE_16__ {int /*<<< orphan*/  pix_fmt; TYPE_1__* priv_data; } ;
struct TYPE_15__ {int key_frame; int* linesize; int /*<<< orphan*/ ** data; int /*<<< orphan*/  pict_type; } ;
struct TYPE_14__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_13__ {int bytes_per_channel; int height; int linesize; int /*<<< orphan*/  g; void* width; void* depth; } ;
typedef  TYPE_1__ SgiState ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PIX_FMT_GRAY16BE ; 
 int /*<<< orphan*/  AV_PIX_FMT_GRAY8 ; 
 int /*<<< orphan*/  AV_PIX_FMT_RGB24 ; 
 int /*<<< orphan*/  AV_PIX_FMT_RGB48BE ; 
 int /*<<< orphan*/  AV_PIX_FMT_RGBA ; 
 int /*<<< orphan*/  AV_PIX_FMT_RGBA64BE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 void* SGI_GRAYSCALE ; 
 scalar_t__ SGI_HEADER_SIZE ; 
 void* SGI_MAGIC ; 
 void* SGI_RGB ; 
 void* SGI_RGBA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_4__*,void*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx,
                        void *data, int *got_frame,
                        AVPacket *avpkt)
{
    SgiState *s = avctx->priv_data;
    AVFrame *p = data;
    unsigned int dimension, rle;
    int ret = 0;
    uint8_t *out_buf, *out_end;

    FUNC4(&s->g, avpkt->data, avpkt->size);
    if (FUNC2(&s->g) < SGI_HEADER_SIZE) {
        FUNC0(avctx, AV_LOG_ERROR, "buf_size too small (%d)\n", avpkt->size);
        return AVERROR_INVALIDDATA;
    }

    /* Test for SGI magic. */
    if (FUNC1(&s->g) != SGI_MAGIC) {
        FUNC0(avctx, AV_LOG_ERROR, "bad magic number\n");
        return AVERROR_INVALIDDATA;
    }

    rle                  = FUNC3(&s->g);
    s->bytes_per_channel = FUNC3(&s->g);
    dimension            = FUNC1(&s->g);
    s->width             = FUNC1(&s->g);
    s->height            = FUNC1(&s->g);
    s->depth             = FUNC1(&s->g);

    if (s->bytes_per_channel != 1 && s->bytes_per_channel != 2) {
        FUNC0(avctx, AV_LOG_ERROR, "wrong channel number\n");
        return AVERROR_INVALIDDATA;
    }

    /* Check for supported image dimensions. */
    if (dimension != 2 && dimension != 3) {
        FUNC0(avctx, AV_LOG_ERROR, "wrong dimension number\n");
        return AVERROR_INVALIDDATA;
    }

    if (s->depth == SGI_GRAYSCALE) {
        avctx->pix_fmt = s->bytes_per_channel == 2 ? AV_PIX_FMT_GRAY16BE : AV_PIX_FMT_GRAY8;
    } else if (s->depth == SGI_RGB) {
        avctx->pix_fmt = s->bytes_per_channel == 2 ? AV_PIX_FMT_RGB48BE : AV_PIX_FMT_RGB24;
    } else if (s->depth == SGI_RGBA) {
        avctx->pix_fmt = s->bytes_per_channel == 2 ? AV_PIX_FMT_RGBA64BE : AV_PIX_FMT_RGBA;
    } else {
        FUNC0(avctx, AV_LOG_ERROR, "wrong picture format\n");
        return AVERROR_INVALIDDATA;
    }

    ret = FUNC7(avctx, s->width, s->height);
    if (ret < 0)
        return ret;

    if ((ret = FUNC6(avctx, p, 0)) < 0)
        return ret;

    p->pict_type = AV_PICTURE_TYPE_I;
    p->key_frame = 1;
    out_buf = p->data[0];

    out_end = out_buf + p->linesize[0] * s->height;

    s->linesize = p->linesize[0];

    /* Skip header. */
    FUNC5(&s->g, SGI_HEADER_SIZE, SEEK_SET);
    if (rle) {
        ret = FUNC8(out_end, s);
    } else {
        ret = FUNC9(out_buf, s);
    }
    if (ret)
        return ret;

    *got_frame = 1;
    return avpkt->size;
}