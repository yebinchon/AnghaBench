#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_26__ {int width; int height; int /*<<< orphan*/  color_range; int /*<<< orphan*/  pix_fmt; TYPE_2__* priv_data; } ;
struct TYPE_25__ {int key_frame; int /*<<< orphan*/  pict_type; } ;
struct TYPE_24__ {int size; int* data; } ;
struct TYPE_22__ {int /*<<< orphan*/  (* bswap_buf ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ;} ;
struct TYPE_23__ {TYPE_13__* prev_frame; void* lo; void* hi; scalar_t__ bitstream; TYPE_1__ bdsp; int /*<<< orphan*/  bitstream_size; int /*<<< orphan*/  gb; } ;
struct TYPE_21__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ IMM4Context ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVCOL_RANGE_JPEG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_GET_BUFFER_FLAG_REF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_P ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUV420P ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_13__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*,unsigned int) ; 
 int FUNC7 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_4__*,TYPE_13__*) ; 
 int FUNC8 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC9 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_5__*,int,int) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC16(AVCodecContext *avctx, void *data,
                        int *got_frame, AVPacket *avpkt)
{
    IMM4Context *s = avctx->priv_data;
    GetBitContext *gb = &s->gb;
    AVFrame *frame = data;
    int width, height;
    unsigned type;
    int ret, scaled;

    if (avpkt->size <= 32)
        return AVERROR_INVALIDDATA;

    FUNC2(&s->bitstream, &s->bitstream_size,
                          FUNC1(avpkt->size, 4));
    if (!s->bitstream)
        return FUNC0(ENOMEM);

    s->bdsp.bswap_buf((uint32_t *)s->bitstream,
                      (uint32_t *)avpkt->data,
                      (avpkt->size + 3) >> 2);

    if ((ret = FUNC13(gb, s->bitstream, FUNC1(avpkt->size, 4))) < 0)
        return ret;

    avctx->pix_fmt = AV_PIX_FMT_YUV420P;
    avctx->color_range = AVCOL_RANGE_JPEG;

    width = avctx->width;
    height = avctx->height;

    scaled = avpkt->data[8];
    if (scaled < 2) {
        int mode = avpkt->data[10];

        switch (mode) {
        case 1:
            width = 352;
            height = 240;
            break;
        case 2:
            width = 704;
            height = 240;
            break;
        case 4:
            width = 480;
            height = 704;
            break;
        case 17:
            width = 352;
            height = 288;
            break;
        case 18:
            width = 704;
            height = 288;
            break;
        default:
            width = 704;
            height = 576;
            break;
        }
    }

    FUNC14(gb, 24 * 8);
    type = FUNC12(gb, 32);
    s->hi = FUNC11(gb, 16);
    s->lo = FUNC11(gb, 16);

    switch (type) {
    case 0x19781977:
        frame->key_frame = 1;
        frame->pict_type = AV_PICTURE_TYPE_I;
        break;
    case 0x12250926:
        frame->key_frame = 0;
        frame->pict_type = AV_PICTURE_TYPE_P;
        break;
    default:
        FUNC6(avctx, "type %X", type);
        return AVERROR_PATCHWELCOME;
    }

    if (avctx->width  != width ||
        avctx->height != height) {
        if (!frame->key_frame) {
            FUNC5(avctx, AV_LOG_ERROR, "Frame size change is unsupported.\n");
            return AVERROR_INVALIDDATA;
        }
        FUNC4(s->prev_frame);
    }

    ret = FUNC10(avctx, width, height);
    if (ret < 0)
        return ret;

    if ((ret = FUNC9(avctx, frame, frame->key_frame ? AV_GET_BUFFER_FLAG_REF : 0)) < 0)
        return ret;

    if (frame->key_frame) {
        ret = FUNC8(avctx, gb, frame);
        if (ret < 0)
            return ret;

        FUNC4(s->prev_frame);
        if ((ret = FUNC3(s->prev_frame, frame)) < 0)
            return ret;
    } else {
        if (!s->prev_frame->data[0]) {
            FUNC5(avctx, AV_LOG_ERROR, "Missing reference frame.\n");
            return AVERROR_INVALIDDATA;
        }

        ret = FUNC7(avctx, gb, frame, s->prev_frame);
        if (ret < 0)
            return ret;
    }

    *got_frame = 1;

    return avpkt->size;
}