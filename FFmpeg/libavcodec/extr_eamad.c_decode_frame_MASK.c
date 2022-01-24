#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int int64_t ;
struct TYPE_19__ {int /*<<< orphan*/  num; int /*<<< orphan*/  den; } ;
struct TYPE_24__ {int width; int height; TYPE_1__ framerate; TYPE_3__* priv_data; } ;
struct TYPE_23__ {int height; int* linesize; int /*<<< orphan*/ ** data; } ;
struct TYPE_22__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* bswap16_buf ) (scalar_t__,int /*<<< orphan*/  const*,int) ;} ;
struct TYPE_21__ {int mb_y; int mb_x; TYPE_5__* last_frame; scalar_t__ bitstream_buf; int /*<<< orphan*/  gb; TYPE_2__ bbdsp; int /*<<< orphan*/  bitstream_buf_size; } ;
typedef  TYPE_3__ MadContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFrame ;
typedef  TYPE_6__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_GET_BUFFER_FLAG_REF ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int MADe_TAG ; 
 int MADm_TAG ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_3__*,TYPE_5__*,int) ; 
 int FUNC15 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC20(AVCodecContext *avctx,
                        void *data, int *got_frame,
                        AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size       = avpkt->size;
    MadContext *s     = avctx->priv_data;
    AVFrame *frame    = data;
    GetByteContext gb;
    int width, height;
    int chunk_type;
    int inter, ret;

    FUNC10(&gb, buf, buf_size);

    chunk_type = FUNC9(&gb);
    inter = (chunk_type == MADm_TAG || chunk_type == MADe_TAG);
    FUNC11(&gb, 10);

    FUNC5(&avctx->framerate.den, &avctx->framerate.num,
              FUNC8(&gb), 1000, 1<<30);

    width  = FUNC8(&gb);
    height = FUNC8(&gb);
    FUNC11(&gb, 1);
    FUNC13(s, FUNC6(&gb));
    FUNC11(&gb, 2);

    if (FUNC7(&gb) < 2) {
        FUNC4(avctx, AV_LOG_ERROR, "Input data too small\n");
        return AVERROR_INVALIDDATA;
    }

    if (width < 16 || height < 16) {
        FUNC4(avctx, AV_LOG_ERROR, "Dimensions too small\n");
        return AVERROR_INVALIDDATA;
    }

    if (avctx->width != width || avctx->height != height) {
        FUNC3(s->last_frame);
        if((width * (int64_t)height)/2048*7 > FUNC7(&gb))
            return AVERROR_INVALIDDATA;
        if ((ret = FUNC16(avctx, width, height)) < 0)
            return ret;
    }

    if ((ret = FUNC15(avctx, frame, AV_GET_BUFFER_FLAG_REF)) < 0)
        return ret;

    if (inter && !s->last_frame->data[0]) {
        FUNC4(avctx, AV_LOG_WARNING, "Missing reference frame.\n");
        ret = FUNC15(avctx, s->last_frame, AV_GET_BUFFER_FLAG_REF);
        if (ret < 0)
            return ret;
        FUNC18(s->last_frame->data[0], 0, s->last_frame->height *
               s->last_frame->linesize[0]);
        FUNC18(s->last_frame->data[1], 0x80, s->last_frame->height / 2 *
               s->last_frame->linesize[1]);
        FUNC18(s->last_frame->data[2], 0x80, s->last_frame->height / 2 *
               s->last_frame->linesize[2]);
    }

    FUNC1(&s->bitstream_buf, &s->bitstream_buf_size,
                          FUNC7(&gb));
    if (!s->bitstream_buf)
        return FUNC0(ENOMEM);
    s->bbdsp.bswap16_buf(s->bitstream_buf, (const uint16_t *)(buf + FUNC12(&gb)),
                         FUNC7(&gb) / 2);
    FUNC18((uint8_t*)s->bitstream_buf + FUNC7(&gb), 0, AV_INPUT_BUFFER_PADDING_SIZE);
    FUNC17(&s->gb, s->bitstream_buf, 8*(FUNC7(&gb)));

    for (s->mb_y=0; s->mb_y < (avctx->height+15)/16; s->mb_y++)
        for (s->mb_x=0; s->mb_x < (avctx->width +15)/16; s->mb_x++)
            if(FUNC14(s, frame, inter) < 0)
                return AVERROR_INVALIDDATA;

    *got_frame = 1;

    if (chunk_type != MADe_TAG) {
        FUNC3(s->last_frame);
        if ((ret = FUNC2(s->last_frame, frame)) < 0)
            return ret;
    }

    return buf_size;
}