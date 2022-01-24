#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct vdpau_picture_context {int /*<<< orphan*/  bitstream_buffers; int /*<<< orphan*/  bitstream_buffers_used; int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  VdpVideoSurface ;
typedef  int /*<<< orphan*/  VdpStatus ;
struct TYPE_9__ {int /*<<< orphan*/  decoder; int /*<<< orphan*/  (* render ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ VDPAUContext ;
struct TYPE_11__ {TYPE_3__* hwaccel_context; TYPE_1__* internal; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* render2 ) (TYPE_4__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  render; } ;
struct TYPE_8__ {TYPE_2__* hwaccel_priv_data; } ;
typedef  TYPE_3__ AVVDPAUContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(AVCodecContext *avctx, AVFrame *frame,
                              struct vdpau_picture_context *pic_ctx)
{
    VDPAUContext *vdctx = avctx->internal->hwaccel_priv_data;
    AVVDPAUContext *hwctx = avctx->hwaccel_context;
    VdpVideoSurface surf = FUNC2(frame);
    VdpStatus status;
    int val;

    val = FUNC1(avctx);
    if (val < 0)
        return val;

    if (hwctx && !hwctx->render && hwctx->render2) {
        status = hwctx->render2(avctx, frame, (void *)&pic_ctx->info,
                                pic_ctx->bitstream_buffers_used, pic_ctx->bitstream_buffers);
    } else
    status = vdctx->render(vdctx->decoder, surf, &pic_ctx->info,
                           pic_ctx->bitstream_buffers_used,
                           pic_ctx->bitstream_buffers);

    FUNC0(&pic_ctx->bitstream_buffers);

    return FUNC5(status);
}