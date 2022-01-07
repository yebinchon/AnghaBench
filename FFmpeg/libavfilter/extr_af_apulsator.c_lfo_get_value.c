
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double phase; int mode; double amount; scalar_t__ offset; int pwidth; } ;
typedef TYPE_1__ SimpleLFO ;


 scalar_t__ FFMAX (double,int ) ;
 double FFMIN (int,scalar_t__) ;
 double M_PI ;





 int av_assert0 (int ) ;
 double fmod (double,int) ;
 double sin (double) ;

__attribute__((used)) static double lfo_get_value(SimpleLFO *lfo)
{
    double phs = FFMIN(100, lfo->phase / FFMIN(1.99, FFMAX(0.01, lfo->pwidth)) + lfo->offset);
    double val;

    if (phs > 1)
        phs = fmod(phs, 1.);

    switch (lfo->mode) {
    case 130:
        val = sin(phs * 2 * M_PI);
        break;
    case 128:
        if (phs > 0.75)
            val = (phs - 0.75) * 4 - 1;
        else if (phs > 0.25)
            val = -4 * phs + 2;
        else
            val = phs * 4;
        break;
    case 129:
        val = phs < 0.5 ? -1 : +1;
        break;
    case 131:
        val = phs * 2 - 1;
        break;
    case 132:
        val = 1 - phs * 2;
        break;
    default: av_assert0(0);
    }

    return val * lfo->amount;
}
