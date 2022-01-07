
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fscale; float w; scalar_t__ nb_freq; } ;
typedef TYPE_1__ ShowFreqsContext ;





 int pow (int,int) ;

__attribute__((used)) static int get_sx(ShowFreqsContext *s, int f)
{
    switch (s->fscale) {
    case 130:
        return (s->w/(float)s->nb_freq)*f;
    case 129:
        return s->w-pow(s->w, (s->nb_freq-f-1)/(s->nb_freq-1.));
    case 128:
        return pow(s->w, f/(s->nb_freq-1.));
    }

    return 0;
}
