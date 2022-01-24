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
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_19__ {double tempo; int stride; scalar_t__ start_pts; scalar_t__ dst; scalar_t__ dst_end; int nsamples_in; TYPE_10__* dst_buffer; } ;
struct TYPE_18__ {TYPE_2__** outputs; TYPE_4__* priv; } ;
struct TYPE_17__ {int /*<<< orphan*/  time_base; TYPE_3__* dst; } ;
struct TYPE_16__ {int nb_samples; int /*<<< orphan*/  pts; int /*<<< orphan*/ ** data; } ;
struct TYPE_15__ {scalar_t__* data; } ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;
typedef  TYPE_4__ ATempoContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC4 (TYPE_2__*,int) ; 
 int FUNC5 (TYPE_4__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,scalar_t__*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *src_buffer)
{
    AVFilterContext  *ctx = inlink->dst;
    ATempoContext *atempo = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];

    int ret = 0;
    int n_in = src_buffer->nb_samples;
    int n_out = (int)(0.5 + ((double)n_in) / atempo->tempo);

    const uint8_t *src = src_buffer->data[0];
    const uint8_t *src_end = src + n_in * atempo->stride;

    if (atempo->start_pts == AV_NOPTS_VALUE)
        atempo->start_pts = FUNC3(src_buffer->pts,
                                         inlink->time_base,
                                         outlink->time_base);

    while (src < src_end) {
        if (!atempo->dst_buffer) {
            atempo->dst_buffer = FUNC4(outlink, n_out);
            if (!atempo->dst_buffer) {
                FUNC2(&src_buffer);
                return FUNC0(ENOMEM);
            }
            FUNC1(atempo->dst_buffer, src_buffer);

            atempo->dst = atempo->dst_buffer->data[0];
            atempo->dst_end = atempo->dst + n_out * atempo->stride;
        }

        FUNC6(atempo, &src, src_end, &atempo->dst, atempo->dst_end);

        if (atempo->dst == atempo->dst_end) {
            int n_samples = ((atempo->dst - atempo->dst_buffer->data[0]) /
                             atempo->stride);
            ret = FUNC5(atempo, outlink, n_samples);
            if (ret < 0)
                goto end;
        }
    }

    atempo->nsamples_in += n_in;
end:
    FUNC2(&src_buffer);
    return ret;
}