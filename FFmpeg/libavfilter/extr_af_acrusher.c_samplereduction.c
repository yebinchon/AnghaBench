
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ round; scalar_t__ samples; } ;
struct TYPE_5__ {scalar_t__ samples; scalar_t__ target; scalar_t__ real; double last; } ;
typedef TYPE_1__ SRContext ;
typedef TYPE_2__ ACrusherContext ;



__attribute__((used)) static double samplereduction(ACrusherContext *s, SRContext *sr, double in)
{
    sr->samples++;
    if (sr->samples >= s->round) {
        sr->target += s->samples;
        sr->real += s->round;
        if (sr->target + s->samples >= sr->real + 1) {
            sr->last = in;
            sr->target = 0;
            sr->real = 0;
        }
        sr->samples = 0;
    }
    return sr->last;
}
