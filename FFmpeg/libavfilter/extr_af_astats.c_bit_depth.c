
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {unsigned int den; scalar_t__ num; } ;
struct TYPE_5__ {unsigned int maxbitdepth; } ;
typedef TYPE_1__ AudioStatsContext ;
typedef TYPE_2__ AVRational ;



__attribute__((used)) static void bit_depth(AudioStatsContext *s, uint64_t mask, uint64_t imask, AVRational *depth)
{
    unsigned result = s->maxbitdepth;

    mask = mask & (~imask);

    for (; result && !(mask & 1); --result, mask >>= 1);

    depth->den = result;
    depth->num = 0;

    for (; result; --result, mask >>= 1)
        if (mask & 1)
            depth->num++;
}
