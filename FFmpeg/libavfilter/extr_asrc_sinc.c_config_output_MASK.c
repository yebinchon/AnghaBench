#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {float sample_rate; TYPE_3__* src; } ;
struct TYPE_7__ {float sample_rate; float Fc0; float Fc1; int* num_taps; float phase; int n; int rdft_len; float* coeffs; int /*<<< orphan*/ * irdft; int /*<<< orphan*/ * rdft; int /*<<< orphan*/  round; int /*<<< orphan*/  beta; int /*<<< orphan*/  att; int /*<<< orphan*/  tbw1; int /*<<< orphan*/  tbw0; scalar_t__ pts; } ;
typedef  TYPE_1__ SincContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 float* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (float*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*,float) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,float**,int*,int*,float) ; 
 int /*<<< orphan*/  FUNC7 (float*,int) ; 
 float* FUNC8 (float,float,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    SincContext *s = ctx->priv;
    float Fn = s->sample_rate * .5f;
    float *h[2];
    int i, n, post_peak, longer;

    outlink->sample_rate = s->sample_rate;
    s->pts = 0;

    if (s->Fc0 >= Fn || s->Fc1 >= Fn) {
        FUNC3(ctx, AV_LOG_ERROR,
               "filter frequency must be less than %d/2.\n", s->sample_rate);
        return FUNC0(EINVAL);
    }

    h[0] = FUNC8(Fn, s->Fc0, s->tbw0, &s->num_taps[0], s->att, &s->beta, s->round);
    h[1] = FUNC8(Fn, s->Fc1, s->tbw1, &s->num_taps[1], s->att, &s->beta, s->round);

    if (h[0])
        FUNC7(h[0], s->num_taps[0]);

    longer = s->num_taps[1] > s->num_taps[0];
    n = s->num_taps[longer];

    if (h[0] && h[1]) {
        for (i = 0; i < s->num_taps[!longer]; i++)
            h[longer][i + (n - s->num_taps[!longer]) / 2] += h[!longer][i];

        if (s->Fc0 < s->Fc1)
            FUNC7(h[longer], n);

        FUNC2(h[!longer]);
    }

    if (s->phase != 50.f) {
        int ret = FUNC6(s, &h[longer], &n, &post_peak, s->phase);
        if (ret < 0)
            return ret;
    } else {
        post_peak = n >> 1;
    }

    s->n = 1 << (FUNC4(n) + 1);
    s->rdft_len = 1 << FUNC4(n);
    s->coeffs = FUNC1(s->n, sizeof(*s->coeffs));
    if (!s->coeffs)
        return FUNC0(ENOMEM);

    for (i = 0; i < n; i++)
        s->coeffs[i] = h[longer][i];
    FUNC2(h[longer]);

    FUNC5(s->rdft);
    FUNC5(s->irdft);
    s->rdft = s->irdft = NULL;

    return 0;
}