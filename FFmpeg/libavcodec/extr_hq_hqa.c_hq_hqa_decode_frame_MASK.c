#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_12__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
struct TYPE_22__ {TYPE_1__* priv_data; } ;
struct TYPE_21__ {int key_frame; int /*<<< orphan*/  pict_type; } ;
struct TYPE_20__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_18__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_19__ {TYPE_12__ gbc; } ;
typedef  TYPE_1__ HQContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 unsigned int FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (TYPE_12__*) ; 
 void* FUNC3 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_12__*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC5 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_12__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_1__*,TYPE_3__*,unsigned int,unsigned int) ; 
 int FUNC9 (TYPE_1__*,TYPE_3__*,unsigned int) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx, void *data,
                               int *got_frame, AVPacket *avpkt)
{
    HQContext *ctx = avctx->priv_data;
    AVFrame *pic = data;
    uint32_t info_tag;
    unsigned int data_size;
    int ret;
    unsigned tag;

    FUNC4(&ctx->gbc, avpkt->data, avpkt->size);
    if (FUNC2(&ctx->gbc) < 4 + 4) {
        FUNC1(avctx, AV_LOG_ERROR, "Frame is too small (%d).\n", avpkt->size);
        return AVERROR_INVALIDDATA;
    }

    info_tag = FUNC5(&ctx->gbc);
    if (info_tag == FUNC0('I', 'N', 'F', 'O')) {
        int info_size;
        FUNC6(&ctx->gbc, 4);
        info_size = FUNC3(&ctx->gbc);
        if (FUNC2(&ctx->gbc) < info_size) {
            FUNC1(avctx, AV_LOG_ERROR, "Invalid INFO size (%d).\n", info_size);
            return AVERROR_INVALIDDATA;
        }
        FUNC7(avctx, ctx->gbc.buffer, info_size);

        FUNC6(&ctx->gbc, info_size);
    }

    data_size = FUNC2(&ctx->gbc);
    if (data_size < 4) {
        FUNC1(avctx, AV_LOG_ERROR, "Frame is too small (%d).\n", data_size);
        return AVERROR_INVALIDDATA;
    }

    /* HQ defines dimensions and number of slices, and thus slice traversal
     * order. HQA has no size constraint and a fixed number of slices, so it
     * needs a separate scheme for it. */
    tag = FUNC3(&ctx->gbc);
    if ((tag & 0x00FFFFFF) == (FUNC0('U', 'V', 'C', ' ') & 0x00FFFFFF)) {
        ret = FUNC8(ctx, pic, tag >> 24, data_size);
    } else if (tag == FUNC0('H', 'Q', 'A', '1')) {
        ret = FUNC9(ctx, pic, data_size);
    } else {
        FUNC1(avctx, AV_LOG_ERROR, "Not a HQ/HQA frame.\n");
        return AVERROR_INVALIDDATA;
    }
    if (ret < 0) {
        FUNC1(avctx, AV_LOG_ERROR, "Error decoding frame.\n");
        return ret;
    }

    pic->key_frame = 1;
    pic->pict_type = AV_PICTURE_TYPE_I;

    *got_frame = 1;

    return avpkt->size;
}