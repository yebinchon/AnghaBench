
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ memcmp (int*,char*,int) ;

__attribute__((used)) static int dhav_probe(const AVProbeData *p)
{
    if (!memcmp(p->buf, "DAHUA", 5))
        return AVPROBE_SCORE_MAX;

    if (memcmp(p->buf, "DHAV", 4))
        return 0;

    if (p->buf[4] == 0xf0 ||
        p->buf[4] == 0xf1 ||
        p->buf[4] == 0xfc ||
        p->buf[4] == 0xfd)
        return AVPROBE_SCORE_MAX;
    return 0;
}
