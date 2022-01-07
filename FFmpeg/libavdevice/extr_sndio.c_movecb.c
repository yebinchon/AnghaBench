
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwpos; int channels; int bps; } ;
typedef TYPE_1__ SndioData ;



__attribute__((used)) static inline void movecb(void *addr, int delta)
{
    SndioData *s = addr;

    s->hwpos += delta * s->channels * s->bps;
}
