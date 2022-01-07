
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RB32 (int ) ;

__attribute__((used)) static int acm_probe(const AVProbeData *p)
{
    if (AV_RB32(p->buf) != 0x97280301)
        return 0;

    return AVPROBE_SCORE_MAX / 3 * 2;
}
