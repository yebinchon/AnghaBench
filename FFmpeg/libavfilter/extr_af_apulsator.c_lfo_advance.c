
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int phase; unsigned int freq; unsigned int srate; } ;
typedef TYPE_1__ SimpleLFO ;


 unsigned int fabs (unsigned int) ;
 int fmod (int,int) ;

__attribute__((used)) static void lfo_advance(SimpleLFO *lfo, unsigned count)
{
    lfo->phase = fabs(lfo->phase + count * lfo->freq / lfo->srate);
    if (lfo->phase >= 1)
        lfo->phase = fmod(lfo->phase, 1);
}
