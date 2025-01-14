
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {float sample_rate; TYPE_3__* src; } ;
struct TYPE_7__ {float sample_rate; float Fc0; float Fc1; int* num_taps; float phase; int n; int rdft_len; float* coeffs; int * irdft; int * rdft; int round; int beta; int att; int tbw1; int tbw0; scalar_t__ pts; } ;
typedef TYPE_1__ SincContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 float* av_calloc (int,int) ;
 int av_free (float*) ;
 int av_log (TYPE_3__*,int ,char*,float) ;
 int av_log2 (int) ;
 int av_rdft_end (int *) ;
 int fir_to_phase (TYPE_1__*,float**,int*,int*,float) ;
 int invert (float*,int) ;
 float* lpf (float,float,int ,int*,int ,int *,int ) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    SincContext *s = ctx->priv;
    float Fn = s->sample_rate * .5f;
    float *h[2];
    int i, n, post_peak, longer;

    outlink->sample_rate = s->sample_rate;
    s->pts = 0;

    if (s->Fc0 >= Fn || s->Fc1 >= Fn) {
        av_log(ctx, AV_LOG_ERROR,
               "filter frequency must be less than %d/2.\n", s->sample_rate);
        return AVERROR(EINVAL);
    }

    h[0] = lpf(Fn, s->Fc0, s->tbw0, &s->num_taps[0], s->att, &s->beta, s->round);
    h[1] = lpf(Fn, s->Fc1, s->tbw1, &s->num_taps[1], s->att, &s->beta, s->round);

    if (h[0])
        invert(h[0], s->num_taps[0]);

    longer = s->num_taps[1] > s->num_taps[0];
    n = s->num_taps[longer];

    if (h[0] && h[1]) {
        for (i = 0; i < s->num_taps[!longer]; i++)
            h[longer][i + (n - s->num_taps[!longer]) / 2] += h[!longer][i];

        if (s->Fc0 < s->Fc1)
            invert(h[longer], n);

        av_free(h[!longer]);
    }

    if (s->phase != 50.f) {
        int ret = fir_to_phase(s, &h[longer], &n, &post_peak, s->phase);
        if (ret < 0)
            return ret;
    } else {
        post_peak = n >> 1;
    }

    s->n = 1 << (av_log2(n) + 1);
    s->rdft_len = 1 << av_log2(n);
    s->coeffs = av_calloc(s->n, sizeof(*s->coeffs));
    if (!s->coeffs)
        return AVERROR(ENOMEM);

    for (i = 0; i < n; i++)
        s->coeffs[i] = h[longer][i];
    av_free(h[longer]);

    av_rdft_end(s->rdft);
    av_rdft_end(s->irdft);
    s->rdft = s->irdft = ((void*)0);

    return 0;
}
