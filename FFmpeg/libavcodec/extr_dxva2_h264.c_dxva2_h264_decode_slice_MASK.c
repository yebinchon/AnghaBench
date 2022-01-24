#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_14__ {int wBitFields; } ;
struct dxva2_picture_context {size_t slice_count; TYPE_7__ pp; int /*<<< orphan*/ * slice_long; int /*<<< orphan*/ * slice_short; int /*<<< orphan*/  const* bitstream; int /*<<< orphan*/  bitstream_size; } ;
struct TYPE_13__ {TYPE_3__* priv_data; } ;
struct TYPE_12__ {TYPE_2__* cur_pic_ptr; TYPE_1__* slice_ctx; } ;
struct TYPE_11__ {struct dxva2_picture_context* hwaccel_picture_private; } ;
struct TYPE_10__ {scalar_t__ slice_type; } ;
typedef  TYPE_1__ H264SliceContext ;
typedef  TYPE_2__ H264Picture ;
typedef  TYPE_3__ H264Context ;
typedef  int /*<<< orphan*/  AVDXVAContext ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ AV_PICTURE_TYPE_I ; 
 scalar_t__ AV_PICTURE_TYPE_SI ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_4__*) ; 
 size_t MAX_SLICES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_7__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx,
                                   const uint8_t *buffer,
                                   uint32_t size)
{
    const H264Context *h = avctx->priv_data;
    const H264SliceContext *sl = &h->slice_ctx[0];
    AVDXVAContext *ctx = FUNC0(avctx);
    const H264Picture *current_picture = h->cur_pic_ptr;
    struct dxva2_picture_context *ctx_pic = current_picture->hwaccel_picture_private;
    unsigned position;

    if (ctx_pic->slice_count >= MAX_SLICES)
        return -1;

    if (!ctx_pic->bitstream)
        ctx_pic->bitstream = buffer;
    ctx_pic->bitstream_size += size;

    position = buffer - ctx_pic->bitstream;
    if (FUNC3(avctx, ctx))
        FUNC2(&ctx_pic->slice_short[ctx_pic->slice_count],
                         position, size);
    else
        FUNC1(avctx, &ctx_pic->slice_long[ctx_pic->slice_count],
                        &ctx_pic->pp, position, size);
    ctx_pic->slice_count++;

    if (sl->slice_type != AV_PICTURE_TYPE_I && sl->slice_type != AV_PICTURE_TYPE_SI)
        ctx_pic->pp.wBitFields &= ~(1 << 15); /* Set IntraPicFlag to 0 */
    return 0;
}