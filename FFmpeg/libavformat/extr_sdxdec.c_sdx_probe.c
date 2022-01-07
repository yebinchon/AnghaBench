
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 scalar_t__ AV_RB32 (char*) ;

__attribute__((used)) static int sdx_probe(const AVProbeData *p)
{
    if (AV_RB32(p->buf) == AV_RB32("SDX:"))
        return AVPROBE_SCORE_EXTENSION;
    return 0;
}
