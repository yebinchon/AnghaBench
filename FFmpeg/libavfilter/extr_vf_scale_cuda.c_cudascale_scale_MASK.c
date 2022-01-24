#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_2__* priv; } ;
struct TYPE_18__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  hw_frames_ctx; } ;
struct TYPE_17__ {TYPE_1__* planes_out; TYPE_3__* frame; TYPE_3__* tmp_frame; } ;
struct TYPE_16__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_2__ CUDAScaleContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx, AVFrame *out, AVFrame *in)
{
    CUDAScaleContext *s = ctx->priv;
    AVFrame *src = in;
    int ret;

    ret = FUNC3(ctx, s->frame, src);
    if (ret < 0)
        return ret;

    src = s->frame;
    ret = FUNC2(src->hw_frames_ctx, s->tmp_frame, 0);
    if (ret < 0)
        return ret;

    FUNC1(out, s->frame);
    FUNC1(s->frame, s->tmp_frame);

    s->frame->width  = s->planes_out[0].width;
    s->frame->height = s->planes_out[0].height;

    ret = FUNC0(out, in);
    if (ret < 0)
        return ret;

    return 0;
}