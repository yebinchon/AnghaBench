#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_13__ {int block_align; int codec_id; int /*<<< orphan*/  frame_size; } ;
struct TYPE_12__ {scalar_t__* data; int /*<<< orphan*/  nb_samples; } ;
struct TYPE_11__ {int size; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
#define  AV_CODEC_ID_GSM 129 
#define  AV_CODEC_ID_GSM_MS 128 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  GSM_13000 ; 
 int /*<<< orphan*/  GSM_MS_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, void *data,
                            int *got_frame_ptr, AVPacket *avpkt)
{
    AVFrame *frame = data;
    int res;
    GetBitContext gb;
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    int16_t *samples;

    if (buf_size < avctx->block_align) {
        FUNC0(avctx, AV_LOG_ERROR, "Packet is too small\n");
        return AVERROR_INVALIDDATA;
    }

    /* get output buffer */
    frame->nb_samples = avctx->frame_size;
    if ((res = FUNC1(avctx, frame, 0)) < 0)
        return res;
    samples = (int16_t *)frame->data[0];

    switch (avctx->codec_id) {
    case AV_CODEC_ID_GSM:
        FUNC5(&gb, buf, buf_size * 8);
        if (FUNC3(&gb, 4) != 0xd)
            FUNC0(avctx, AV_LOG_WARNING, "Missing GSM magic!\n");
        res = FUNC4(avctx, samples, &gb, GSM_13000);
        if (res < 0)
            return res;
        break;
    case AV_CODEC_ID_GSM_MS:
        res = FUNC2(avctx, samples, buf,
                                    (GSM_MS_BLOCK_SIZE - avctx->block_align) / 3);
        if (res < 0)
            return res;
    }

    *got_frame_ptr = 1;

    return avctx->block_align;
}