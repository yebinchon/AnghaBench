#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ data; } ;
struct TYPE_19__ {void* hw_frames_ctx; int /*<<< orphan*/  format; } ;
struct TYPE_18__ {TYPE_2__* internal; int /*<<< orphan*/  pool; int /*<<< orphan*/  format; } ;
struct TYPE_17__ {TYPE_1__* hw_type; int /*<<< orphan*/  source_allocation_map_flags; TYPE_5__* source_frames; } ;
struct TYPE_16__ {int (* frames_get_buffer ) (TYPE_3__*,TYPE_4__*) ;} ;
typedef  TYPE_3__ AVHWFramesContext ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 void* FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 TYPE_4__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**) ; 
 int FUNC5 (TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (TYPE_3__*,TYPE_4__*) ; 

int FUNC8(AVBufferRef *hwframe_ref, AVFrame *frame, int flags)
{
    AVHWFramesContext *ctx = (AVHWFramesContext*)hwframe_ref->data;
    int ret;

    if (ctx->internal->source_frames) {
        // This is a derived frame context, so we allocate in the source
        // and map the frame immediately.
        AVFrame *src_frame;

        frame->format = ctx->format;
        frame->hw_frames_ctx = FUNC1(hwframe_ref);
        if (!frame->hw_frames_ctx)
            return FUNC0(ENOMEM);

        src_frame = FUNC3();
        if (!src_frame)
            return FUNC0(ENOMEM);

        ret = FUNC8(ctx->internal->source_frames,
                                    src_frame, 0);
        if (ret < 0) {
            FUNC4(&src_frame);
            return ret;
        }

        ret = FUNC5(frame, src_frame,
                             ctx->internal->source_allocation_map_flags);
        if (ret) {
            FUNC6(ctx, AV_LOG_ERROR, "Failed to map frame into derived "
                   "frame context: %d.\n", ret);
            FUNC4(&src_frame);
            return ret;
        }

        // Free the source frame immediately - the mapped frame still
        // contains a reference to it.
        FUNC4(&src_frame);

        return 0;
    }

    if (!ctx->internal->hw_type->frames_get_buffer)
        return FUNC0(ENOSYS);

    if (!ctx->pool)
        return FUNC0(EINVAL);

    frame->hw_frames_ctx = FUNC1(hwframe_ref);
    if (!frame->hw_frames_ctx)
        return FUNC0(ENOMEM);

    ret = ctx->internal->hw_type->frames_get_buffer(ctx, frame);
    if (ret < 0) {
        FUNC2(&frame->hw_frames_ctx);
        return ret;
    }

    return 0;
}