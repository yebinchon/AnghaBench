
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* bands; } ;
struct TYPE_7__ {int fixed_lsb_width; } ;
struct TYPE_6__ {int* bit_width_adjust; int* nscalablelsbs; } ;
typedef TYPE_2__ DCAXllDecoder ;
typedef TYPE_3__ DCAXllChSet ;



__attribute__((used)) static int chs_get_lsb_width(DCAXllDecoder *s, DCAXllChSet *c, int band, int ch)
{
    int adj = c->bands[band].bit_width_adjust[ch];
    int shift = c->bands[band].nscalablelsbs[ch];

    if (s->fixed_lsb_width)
        shift = s->fixed_lsb_width;
    else if (shift && adj)
        shift += adj - 1;
    else
        shift += adj;

    return shift;
}
