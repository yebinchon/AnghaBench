
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RL32 (int*) ;
 scalar_t__ memcmp (int*,char*,int) ;

__attribute__((used)) static int fsb_probe(const AVProbeData *p)
{
    if (memcmp(p->buf, "FSB", 3) || p->buf[3] - '0' < 1 || p->buf[3] - '0' > 5)
        return 0;
    if (AV_RL32(p->buf + 4) != 1)
        return 0;
    return AVPROBE_SCORE_MAX;
}
