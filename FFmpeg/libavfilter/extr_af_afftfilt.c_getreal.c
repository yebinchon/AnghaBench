
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nb_exprs; int window_size; TYPE_1__** fft_data; } ;
struct TYPE_3__ {double re; } ;
typedef TYPE_2__ AFFTFiltContext ;


 int av_clip (double,int ,int) ;

__attribute__((used)) static inline double getreal(void *priv, double x, double ch)
{
    AFFTFiltContext *s = priv;
    int ich, ix;

    ich = av_clip(ch, 0, s->nb_exprs - 1);
    ix = av_clip(x, 0, s->window_size / 2);

    return s->fft_data[ich][ix].re;
}
