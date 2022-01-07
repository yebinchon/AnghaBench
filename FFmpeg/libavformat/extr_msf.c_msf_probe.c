
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RB32 (scalar_t__) ;
 scalar_t__ memcmp (scalar_t__,char*,int) ;

__attribute__((used)) static int msf_probe(const AVProbeData *p)
{
    if (memcmp(p->buf, "MSF", 3))
        return 0;

    if (AV_RB32(p->buf+8) <= 0)
        return 0;

    if (AV_RB32(p->buf+16) <= 0)
        return 0;

    if (AV_RB32(p->buf+4) > 16)
        return AVPROBE_SCORE_MAX / 5;

    return AVPROBE_SCORE_MAX / 3 * 2;
}
