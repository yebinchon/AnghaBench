
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RB32 (int ) ;
 scalar_t__ AV_RL32 (int ) ;
 scalar_t__ SOX_TAG ;

__attribute__((used)) static int sox_probe(const AVProbeData *p)
{
    if (AV_RL32(p->buf) == SOX_TAG || AV_RB32(p->buf) == SOX_TAG)
        return AVPROBE_SCORE_MAX;
    return 0;
}
