#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  float uint8_t ;
struct TYPE_12__ {TYPE_6__* out; TYPE_6__* in; } ;
typedef  TYPE_4__ ThreadData ;
struct TYPE_15__ {TYPE_5__* priv; } ;
struct TYPE_14__ {int height; float** data; int const* linesize; int width; } ;
struct TYPE_11__ {int /*<<< orphan*/  highlights; int /*<<< orphan*/  midtones; int /*<<< orphan*/  shadows; } ;
struct TYPE_10__ {int /*<<< orphan*/  highlights; int /*<<< orphan*/  midtones; int /*<<< orphan*/  shadows; } ;
struct TYPE_9__ {int /*<<< orphan*/  highlights; int /*<<< orphan*/  midtones; int /*<<< orphan*/  shadows; } ;
struct TYPE_13__ {float max; scalar_t__ preserve_lightness; TYPE_3__ yellow_blue; TYPE_2__ magenta_green; TYPE_1__ cyan_red; } ;
typedef  TYPE_5__ ColorBalanceContext ;
typedef  TYPE_6__ AVFrame ;
typedef  TYPE_7__ AVFilterContext ;

/* Variables and functions */
 float FUNC0 (float,float,float) ; 
 float FUNC1 (float,float,float) ; 
 float FUNC2 (float) ; 
 float FUNC3 (float,float const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*,float*,float const) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    ColorBalanceContext *s = ctx->priv;
    ThreadData *td = arg;
    AVFrame *in = td->in;
    AVFrame *out = td->out;
    const int slice_start = (out->height * jobnr) / nb_jobs;
    const int slice_end = (out->height * (jobnr+1)) / nb_jobs;
    const uint8_t *srcg = in->data[0] + slice_start * in->linesize[0];
    const uint8_t *srcb = in->data[1] + slice_start * in->linesize[1];
    const uint8_t *srcr = in->data[2] + slice_start * in->linesize[2];
    const uint8_t *srca = in->data[3] + slice_start * in->linesize[3];
    uint8_t *dstg = out->data[0] + slice_start * out->linesize[0];
    uint8_t *dstb = out->data[1] + slice_start * out->linesize[1];
    uint8_t *dstr = out->data[2] + slice_start * out->linesize[2];
    uint8_t *dsta = out->data[3] + slice_start * out->linesize[3];
    const float max = s->max;
    int i, j;

    for (i = slice_start; i < slice_end; i++) {
        for (j = 0; j < out->width; j++) {
            float r = srcr[j] / max;
            float g = srcg[j] / max;
            float b = srcb[j] / max;
            const float l = FUNC0(r, g, b) + FUNC1(r, g, b);

            r = FUNC3(r, l, s->cyan_red.shadows, s->cyan_red.midtones, s->cyan_red.highlights);
            g = FUNC3(g, l, s->magenta_green.shadows, s->magenta_green.midtones, s->magenta_green.highlights);
            b = FUNC3(b, l, s->yellow_blue.shadows, s->yellow_blue.midtones, s->yellow_blue.highlights);

            if (s->preserve_lightness)
                FUNC4(&r, &g, &b, l);

            dstr[j] = FUNC2(r * max);
            dstg[j] = FUNC2(g * max);
            dstb[j] = FUNC2(b * max);
            if (in != out && out->linesize[3])
                dsta[j] = srca[j];
        }

        srcg += in->linesize[0];
        srcb += in->linesize[1];
        srcr += in->linesize[2];
        srca += in->linesize[3];
        dstg += out->linesize[0];
        dstb += out->linesize[1];
        dstr += out->linesize[2];
        dsta += out->linesize[3];
    }

    return 0;
}