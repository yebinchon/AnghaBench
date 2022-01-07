
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int plane; int n; TYPE_2__* vdata; TYPE_2__* hdata; } ;
typedef TYPE_1__ ThreadData ;
struct TYPE_11__ {TYPE_3__* priv; } ;
struct TYPE_10__ {int ** fft; } ;
struct TYPE_9__ {int im; int re; } ;
typedef TYPE_2__ FFTComplex ;
typedef TYPE_3__ ConvolveContext ;
typedef TYPE_4__ AVFilterContext ;


 int av_fft_calc (int ,TYPE_2__*) ;
 int av_fft_permute (int ,TYPE_2__*) ;

__attribute__((used)) static int fft_vertical(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    ConvolveContext *s = ctx->priv;
    ThreadData *td = arg;
    FFTComplex *hdata = td->hdata;
    FFTComplex *vdata = td->vdata;
    const int plane = td->plane;
    const int n = td->n;
    int start = (n * jobnr) / nb_jobs;
    int end = (n * (jobnr+1)) / nb_jobs;
    int y, x;

    for (y = start; y < end; y++) {
        for (x = 0; x < n; x++) {
            vdata[y * n + x].re = hdata[x * n + y].re;
            vdata[y * n + x].im = hdata[x * n + y].im;
        }

        av_fft_permute(s->fft[plane][jobnr], vdata + y * n);
        av_fft_calc(s->fft[plane][jobnr], vdata + y * n);
    }

    return 0;
}
