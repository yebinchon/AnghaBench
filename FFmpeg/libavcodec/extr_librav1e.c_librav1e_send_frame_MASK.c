#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_2__ librav1eContext ;
struct TYPE_14__ {TYPE_2__* priv_data; } ;
struct TYPE_13__ {int height; int* linesize; int /*<<< orphan*/ * data; int /*<<< orphan*/  format; } ;
struct TYPE_12__ {int nb_components; int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_10__ {int depth; } ;
typedef  int /*<<< orphan*/  RaFrame ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXTERNAL ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
#define  RA_ENCODER_STATUS_ENOUGH_DATA 130 
#define  RA_ENCODER_STATUS_FAILURE 129 
#define  RA_ENCODER_STATUS_SUCCESS 128 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx, const AVFrame *frame)
{
    librav1eContext *ctx = avctx->priv_data;
    RaFrame *rframe = NULL;
    int ret;

    if (frame) {
        const AVPixFmtDescriptor *desc = FUNC2(frame->format);

        rframe = FUNC4(ctx->ctx);
        if (!rframe) {
            FUNC1(avctx, AV_LOG_ERROR, "Could not allocate new rav1e frame.\n");
            return FUNC0(ENOMEM);
        }

        for (int i = 0; i < desc->nb_components; i++) {
            int shift = i ? desc->log2_chroma_h : 0;
            int bytes = desc->comp[0].depth == 8 ? 1 : 2;
            FUNC3(rframe, i, frame->data[i],
                                   (frame->height >> shift) * frame->linesize[i],
                                   frame->linesize[i], bytes);
        }
    }

    ret = FUNC6(ctx->ctx, rframe);
    if (rframe)
         FUNC5(rframe); /* No need to unref if flushing. */

    switch (ret) {
    case RA_ENCODER_STATUS_SUCCESS:
        break;
    case RA_ENCODER_STATUS_ENOUGH_DATA:
        return FUNC0(EAGAIN);
    case RA_ENCODER_STATUS_FAILURE:
        FUNC1(avctx, AV_LOG_ERROR, "Could not send frame: %s\n", FUNC7(ret));
        return AVERROR_EXTERNAL;
    default:
        FUNC1(avctx, AV_LOG_ERROR, "Unknown return code %d from rav1e_send_frame: %s\n", ret, FUNC7(ret));
        return AVERROR_UNKNOWN;
    }

    return 0;
}