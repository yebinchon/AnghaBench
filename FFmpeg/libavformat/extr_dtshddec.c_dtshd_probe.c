
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RB64 (int ) ;
 scalar_t__ DTSHDHDR ;

__attribute__((used)) static int dtshd_probe(const AVProbeData *p)
{
    if (AV_RB64(p->buf) == DTSHDHDR)
        return AVPROBE_SCORE_MAX;
    return 0;
}
