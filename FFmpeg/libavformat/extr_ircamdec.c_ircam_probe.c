
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RN32 (int*) ;

__attribute__((used)) static int ircam_probe(const AVProbeData *p)
{
    if ((p->buf[0] == 0x64 && p->buf[1] == 0xA3 && p->buf[3] == 0x00 &&
         p->buf[2] >= 1 && p->buf[2] <= 4) ||
        (p->buf[3] == 0x64 && p->buf[2] == 0xA3 && p->buf[0] == 0x00 &&
         p->buf[1] >= 1 && p->buf[1] <= 3) &&
        AV_RN32(p->buf + 4) && AV_RN32(p->buf + 8))
        return AVPROBE_SCORE_MAX / 4 * 3;
    return 0;
}
