
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int plane; int n; int * hdata; } ;
typedef TYPE_1__ ThreadData ;
struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_6__ {int ** ifft; } ;
typedef int FFTComplex ;
typedef TYPE_2__ ConvolveContext ;
typedef TYPE_3__ AVFilterContext ;


 int av_fft_calc (int ,int *) ;
 int av_fft_permute (int ,int *) ;

__attribute__((used)) static int ifft_horizontal(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    ConvolveContext *s = ctx->priv;
    ThreadData *td = arg;
    FFTComplex *hdata = td->hdata;
    const int plane = td->plane;
    const int n = td->n;
    int start = (n * jobnr) / nb_jobs;
    int end = (n * (jobnr+1)) / nb_jobs;
    int y;

    for (y = start; y < end; y++) {
        av_fft_permute(s->ifft[plane][jobnr], hdata + y * n);
        av_fft_calc(s->ifft[plane][jobnr], hdata + y * n);
    }

    return 0;
}
