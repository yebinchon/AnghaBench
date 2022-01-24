#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_14__ {void* f; } ;
typedef  TYPE_2__ ThreadFrame ;
struct TYPE_17__ {int num_x_slices; int mb_height; int mb_width; scalar_t__ slice_width; TYPE_1__* frame; } ;
struct TYPE_16__ {TYPE_5__* priv_data; } ;
struct TYPE_15__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_13__ {int key_frame; int /*<<< orphan*/  pict_type; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVCodecContext ;
typedef  TYPE_5__ AICContext ;

/* Variables and functions */
 int AIC_HDR_SIZE ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (TYPE_5__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (TYPE_5__*,int,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC6 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, void *data, int *got_frame,
                            AVPacket *avpkt)
{
    AICContext *ctx    = avctx->priv_data;
    const uint8_t *buf = avpkt->data;
    int buf_size       = avpkt->size;
    GetByteContext gb;
    uint32_t off;
    int x, y, ret;
    int slice_size;
    ThreadFrame frame = { .f = data };

    ctx->frame            = data;
    ctx->frame->pict_type = AV_PICTURE_TYPE_I;
    ctx->frame->key_frame = 1;

    off = FUNC0(AIC_HDR_SIZE + ctx->num_x_slices * ctx->mb_height * 2, 4);

    if (buf_size < off) {
        FUNC3(avctx, AV_LOG_ERROR, "Too small frame\n");
        return AVERROR_INVALIDDATA;
    }

    ret = FUNC1(ctx, buf, buf_size);
    if (ret < 0) {
        FUNC3(avctx, AV_LOG_ERROR, "Invalid header\n");
        return ret;
    }

    if ((ret = FUNC6(avctx, &frame, 0)) < 0)
        return ret;

    FUNC5(&gb, buf + AIC_HDR_SIZE,
                     ctx->num_x_slices * ctx->mb_height * 2);

    for (y = 0; y < ctx->mb_height; y++) {
        for (x = 0; x < ctx->mb_width; x += ctx->slice_width) {
            slice_size = FUNC4(&gb) * 4;
            if (slice_size + off > buf_size || !slice_size) {
                FUNC3(avctx, AV_LOG_ERROR,
                       "Incorrect slice size %d at %d.%d\n", slice_size, x, y);
                return AVERROR_INVALIDDATA;
            }

            ret = FUNC2(ctx, x, y, buf + off, slice_size);
            if (ret < 0) {
                FUNC3(avctx, AV_LOG_ERROR,
                       "Error decoding slice at %d.%d\n", x, y);
                return ret;
            }

            off += slice_size;
        }
    }

    *got_frame = 1;

    return avpkt->size;
}