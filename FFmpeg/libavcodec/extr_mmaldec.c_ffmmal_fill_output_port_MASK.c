#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_4__* priv_data; } ;
struct TYPE_11__ {TYPE_3__* decoder; TYPE_2__* pool_out; } ;
struct TYPE_10__ {int /*<<< orphan*/ * output; } ;
struct TYPE_9__ {TYPE_1__* pool; } ;
struct TYPE_8__ {int /*<<< orphan*/  queue; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;
typedef  TYPE_4__ MMALDecodeContext ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx)
{
    MMALDecodeContext *ctx = avctx->priv_data;
    MMAL_BUFFER_HEADER_T *buffer;
    MMAL_STATUS_T status;

    if (!ctx->pool_out)
        return AVERROR_UNKNOWN; // format change code failed with OOM previously

    while ((buffer = FUNC3(ctx->pool_out->pool->queue))) {
        if ((status = FUNC2(ctx->decoder->output[0], buffer))) {
            FUNC1(buffer);
            FUNC0(avctx, AV_LOG_ERROR, "MMAL error %d when sending output buffer.\n", (int)status);
            return AVERROR_UNKNOWN;
        }
    }

    return 0;
}