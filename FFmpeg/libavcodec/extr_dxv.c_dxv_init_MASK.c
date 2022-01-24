#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  height; void* coded_height; int /*<<< orphan*/  width; void* coded_width; TYPE_1__* priv_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  texdsp; } ;
typedef  TYPE_1__ DXVContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx)
{
    DXVContext *ctx = avctx->priv_data;
    int ret = FUNC1(avctx->width, avctx->height, 0, avctx);

    if (ret < 0) {
        FUNC2(avctx, AV_LOG_ERROR, "Invalid image size %dx%d.\n",
               avctx->width, avctx->height);
        return ret;
    }

    /* Codec requires 16x16 alignment. */
    avctx->coded_width  = FUNC0(avctx->width,  16);
    avctx->coded_height = FUNC0(avctx->height, 16);

    FUNC3(&ctx->texdsp);

    return 0;
}