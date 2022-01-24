#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* internal; } ;
struct TYPE_6__ {int /*<<< orphan*/  decoder_pool; int /*<<< orphan*/  decoder_ref; scalar_t__ slice_offsets_allocated; scalar_t__ nb_slices; int /*<<< orphan*/  slice_offsets; scalar_t__ bitstream_allocated; scalar_t__ bitstream_len; int /*<<< orphan*/  bitstream; } ;
struct TYPE_5__ {TYPE_2__* hwaccel_priv_data; } ;
typedef  TYPE_2__ NVDECContext ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(AVCodecContext *avctx)
{
    NVDECContext *ctx = avctx->internal->hwaccel_priv_data;

    FUNC2(&ctx->bitstream);
    ctx->bitstream_len       = 0;
    ctx->bitstream_allocated = 0;

    FUNC2(&ctx->slice_offsets);
    ctx->nb_slices               = 0;
    ctx->slice_offsets_allocated = 0;

    FUNC1(&ctx->decoder_ref);
    FUNC0(&ctx->decoder_pool);

    return 0;
}