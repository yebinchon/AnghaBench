
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double phase; double amount; scalar_t__ offset; int pwidth; } ;
typedef TYPE_1__ LFOContext ;


 scalar_t__ FFMAX (double,int ) ;
 double FFMIN (int,scalar_t__) ;
 double M_PI ;
 double fmod (double,int) ;
 double sin (double) ;

__attribute__((used)) static double lfo_get(LFOContext *lfo)
{
    double phs = FFMIN(100., lfo->phase / FFMIN(1.99, FFMAX(0.01, lfo->pwidth)) + lfo->offset);
    double val;

    if (phs > 1)
        phs = fmod(phs, 1.);

    val = sin((phs * 360.) * M_PI / 180);

    return val * lfo->amount;
}
