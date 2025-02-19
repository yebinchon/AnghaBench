
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {scalar_t__ orientation; int h; int w; float** phases; } ;
typedef TYPE_1__ ShowSpectrumContext ;
typedef TYPE_2__ AVFilterContext ;


 int M_PI ;
 int PHASE (int,int const) ;
 scalar_t__ VERTICAL ;

__attribute__((used)) static int calc_channel_phases(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    ShowSpectrumContext *s = ctx->priv;
    const int h = s->orientation == VERTICAL ? s->h : s->w;
    const int ch = jobnr;
    float *phases = s->phases[ch];
    int y;

    for (y = 0; y < h; y++)
        phases[y] = (PHASE(y, ch) / M_PI + 1) / 2;

    return 0;
}
