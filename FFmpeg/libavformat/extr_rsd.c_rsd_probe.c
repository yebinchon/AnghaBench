
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

__attribute__((used)) static int rsd_probe(const AVProbeData *p)
{
    if (memcmp(p->buf, "RSD", 3) || p->buf[3] - '0' < 2 || p->buf[3] - '0' > 6)
        return 0;
    if (AV_RL32(p->buf + 8) > 256 || !AV_RL32(p->buf + 8))
        return AVPROBE_SCORE_MAX / 8;
    if (AV_RL32(p->buf + 16) > 8*48000 || !AV_RL32(p->buf + 16))
        return AVPROBE_SCORE_MAX / 8;
    return AVPROBE_SCORE_MAX;
}
