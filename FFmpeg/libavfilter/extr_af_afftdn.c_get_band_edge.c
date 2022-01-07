
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* band_centre; int sample_rate; } ;
typedef TYPE_1__ AudioFFTDeNoiseContext ;


 int FFMIN (int,int) ;
 int lrint (double) ;

__attribute__((used)) static int get_band_edge(AudioFFTDeNoiseContext *s, int band)
{
    int i;

    if (band == 15) {
        i = lrint(s->band_centre[14] * 1.224745);
    } else {
        i = lrint(s->band_centre[band] / 1.224745);
    }

    return FFMIN(i, s->sample_rate / 2);
}
