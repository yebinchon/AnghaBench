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
struct TYPE_7__ {TYPE_1__** inputs; TYPE_2__* priv; } ;
struct TYPE_6__ {scalar_t__ dumpscale; int fir_len; int* analysis_buf; int rdft_len; int analysis_rdft_len; double* dump_buf; scalar_t__ min_phase; int /*<<< orphan*/  analysis_rdft; scalar_t__ zero_phase; } ;
struct TYPE_5__ {int sample_rate; } ;
typedef  TYPE_2__ FIREqualizerContext ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 scalar_t__ SCALE_LINLOG ; 
 scalar_t__ SCALE_LOGLIN ; 
 scalar_t__ SCALE_LOGLOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 double FUNC3 (int,int) ; 
 double FUNC4 (double) ; 
 double FUNC5 (double) ; 

__attribute__((used)) static void FUNC6(AVFilterContext *ctx, FILE *fp, int ch)
{
    FIREqualizerContext *s = ctx->priv;
    int rate = ctx->inputs[0]->sample_rate;
    int xlog = s->dumpscale == SCALE_LOGLIN || s->dumpscale == SCALE_LOGLOG;
    int ylog = s->dumpscale == SCALE_LINLOG || s->dumpscale == SCALE_LOGLOG;
    int x;
    int center = s->fir_len / 2;
    double delay = s->zero_phase ? 0.0 : (double) center / rate;
    double vx, ya, yb;

    if (!s->min_phase) {
        s->analysis_buf[0] *= s->rdft_len/2;
        for (x = 1; x <= center; x++) {
            s->analysis_buf[x] *= s->rdft_len/2;
            s->analysis_buf[s->analysis_rdft_len - x] *= s->rdft_len/2;
        }
    } else {
        for (x = 0; x < s->fir_len; x++)
            s->analysis_buf[x] *= s->rdft_len/2;
    }

    if (ch)
        FUNC2(fp, "\n\n");

    FUNC2(fp, "# time[%d] (time amplitude)\n", ch);

    if (!s->min_phase) {
    for (x = center; x > 0; x--)
        FUNC2(fp, "%15.10f %15.10f\n", delay - (double) x / rate, (double) s->analysis_buf[s->analysis_rdft_len - x]);

    for (x = 0; x <= center; x++)
        FUNC2(fp, "%15.10f %15.10f\n", delay + (double)x / rate , (double) s->analysis_buf[x]);
    } else {
        for (x = 0; x < s->fir_len; x++)
            FUNC2(fp, "%15.10f %15.10f\n", (double)x / rate, (double) s->analysis_buf[x]);
    }

    FUNC0(s->analysis_rdft, s->analysis_buf);

    FUNC2(fp, "\n\n# freq[%d] (frequency desired_gain actual_gain)\n", ch);

    for (x = 0; x <= s->analysis_rdft_len/2; x++) {
        int i = (x == s->analysis_rdft_len/2) ? 1 : 2 * x;
        vx = (double)x * rate / s->analysis_rdft_len;
        if (xlog)
            vx = FUNC5(0.05*vx);
        ya = s->dump_buf[i];
        yb = s->min_phase && (i > 1) ? FUNC3(s->analysis_buf[i], s->analysis_buf[i+1]) : s->analysis_buf[i];
        if (s->min_phase)
            yb = FUNC1(yb);
        if (ylog) {
            ya = 20.0 * FUNC4(FUNC1(ya));
            yb = 20.0 * FUNC4(FUNC1(yb));
        }
        FUNC2(fp, "%17.10f %17.10f %17.10f\n", vx, ya, yb);
    }
}