
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fscale; float w; scalar_t__ nb_freq; } ;
typedef TYPE_1__ ShowFreqsContext ;





 float pow (float,int) ;

__attribute__((used)) static float get_bsize(ShowFreqsContext *s, int f)
{
    switch (s->fscale) {
    case 130:
        return s->w/(float)s->nb_freq;
    case 129:
        return pow(s->w, (s->nb_freq-f-1)/(s->nb_freq-1.))-
               pow(s->w, (s->nb_freq-f-2)/(s->nb_freq-1.));
    case 128:
        return pow(s->w, (f+1)/(s->nb_freq-1.))-
               pow(s->w, f /(s->nb_freq-1.));
    }

    return 1.;
}
