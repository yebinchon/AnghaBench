#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_7__ {TYPE_3__** data; int /*<<< orphan*/ * buf; } ;
struct TYPE_6__ {struct TYPE_6__* val; } ;
struct TYPE_5__ {int fft_time; int cqt_time; int process_cqt_time; int update_sono_time; int alloc_time; int bar_time; int axis_time; int sono_time; int cqt_len; TYPE_3__* bar_v_buf; TYPE_3__* sono_v_buf; TYPE_3__* freq; TYPE_3__* rcp_h_buf; TYPE_3__* h_buf; TYPE_3__* c_buf; TYPE_3__* attack_data; TYPE_3__* cqt_result; TYPE_3__* fft_result; TYPE_3__* fft_data; TYPE_3__* coeffs; int /*<<< orphan*/ * fft_ctx; TYPE_4__* sono_frame; TYPE_4__* axis_frame; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ ShowCQTContext ;

/* Variables and functions */
 int AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static void FUNC4(ShowCQTContext *s)
{
    int k;
    int level = AV_LOG_DEBUG;
    int64_t plot_time;

    if (s->fft_time)
        FUNC3(s->ctx, level, "fft_time         = %16.3f s.\n", s->fft_time * 1e-6);
    if (s->cqt_time)
        FUNC3(s->ctx, level, "cqt_time         = %16.3f s.\n", s->cqt_time * 1e-6);
    if (s->process_cqt_time)
        FUNC3(s->ctx, level, "process_cqt_time = %16.3f s.\n", s->process_cqt_time * 1e-6);
    if (s->update_sono_time)
        FUNC3(s->ctx, level, "update_sono_time = %16.3f s.\n", s->update_sono_time * 1e-6);
    if (s->alloc_time)
        FUNC3(s->ctx, level, "alloc_time       = %16.3f s.\n", s->alloc_time * 1e-6);
    if (s->bar_time)
        FUNC3(s->ctx, level, "bar_time         = %16.3f s.\n", s->bar_time * 1e-6);
    if (s->axis_time)
        FUNC3(s->ctx, level, "axis_time        = %16.3f s.\n", s->axis_time * 1e-6);
    if (s->sono_time)
        FUNC3(s->ctx, level, "sono_time        = %16.3f s.\n", s->sono_time * 1e-6);

    plot_time = s->fft_time + s->cqt_time + s->process_cqt_time + s->update_sono_time
              + s->alloc_time + s->bar_time + s->axis_time + s->sono_time;
    if (plot_time)
        FUNC3(s->ctx, level, "plot_time        = %16.3f s.\n", plot_time * 1e-6);

    s->fft_time = s->cqt_time = s->process_cqt_time = s->update_sono_time
                = s->alloc_time = s->bar_time = s->axis_time = s->sono_time = 0;
    /* axis_frame may be non reference counted frame */
    if (s->axis_frame && !s->axis_frame->buf[0]) {
        FUNC2(s->axis_frame->data);
        for (k = 0; k < 4; k++)
            s->axis_frame->data[k] = NULL;
    }

    FUNC1(&s->axis_frame);
    FUNC1(&s->sono_frame);
    FUNC0(s->fft_ctx);
    s->fft_ctx = NULL;
    if (s->coeffs)
        for (k = 0; k < s->cqt_len; k++)
            FUNC2(&s->coeffs[k].val);
    FUNC2(&s->coeffs);
    FUNC2(&s->fft_data);
    FUNC2(&s->fft_result);
    FUNC2(&s->cqt_result);
    FUNC2(&s->attack_data);
    FUNC2(&s->c_buf);
    FUNC2(&s->h_buf);
    FUNC2(&s->rcp_h_buf);
    FUNC2(&s->freq);
    FUNC2(&s->sono_v_buf);
    FUNC2(&s->bar_v_buf);
}