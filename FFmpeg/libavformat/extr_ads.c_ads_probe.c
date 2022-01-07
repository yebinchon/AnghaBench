
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ memcmp (scalar_t__,char*,int) ;

__attribute__((used)) static int ads_probe(const AVProbeData *p)
{
    if (memcmp(p->buf, "SShd", 4) ||
        memcmp(p->buf+32, "SSbd", 4))
        return 0;

    return AVPROBE_SCORE_MAX / 3 * 2;
}
