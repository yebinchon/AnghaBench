
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ orientation; int h; int w; int nb_display_channels; float** magnitudes; } ;
typedef TYPE_1__ ShowSpectrumContext ;


 scalar_t__ VERTICAL ;

__attribute__((used)) static void scale_magnitudes(ShowSpectrumContext *s, float scale)
{
    int ch, y, h = s->orientation == VERTICAL ? s->h : s->w;

    for (ch = 0; ch < s->nb_display_channels; ch++) {
        float *magnitudes = s->magnitudes[ch];

        for (y = 0; y < h; y++)
            magnitudes[y] *= scale;
    }
}
