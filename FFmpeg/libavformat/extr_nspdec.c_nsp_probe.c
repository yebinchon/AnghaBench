
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RB32 (char*) ;

__attribute__((used)) static int nsp_probe(const AVProbeData *p)
{
    if (AV_RB32(p->buf) == AV_RB32("FORM") &&
        AV_RB32(p->buf + 4) == AV_RB32("DS16"))
        return AVPROBE_SCORE_MAX;
    return 0;
}
