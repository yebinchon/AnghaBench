
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int phase; unsigned int freq; int srate; } ;
typedef TYPE_1__ LFOContext ;


 unsigned int fabs (unsigned int) ;
 int fmod (int,int) ;

__attribute__((used)) static void lfo_advance(LFOContext *lfo, unsigned count)
{
    lfo->phase = fabs(lfo->phase + count * lfo->freq * (1. / lfo->srate));
    if (lfo->phase >= 1.)
        lfo->phase = fmod(lfo->phase, 1.);
}
