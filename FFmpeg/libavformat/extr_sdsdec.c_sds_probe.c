
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AV_RB32 (int*) ;

__attribute__((used)) static int sds_probe(const AVProbeData *p)
{
    if (AV_RB32(p->buf) == 0xF07E0001 && p->buf[20] == 0xF7 &&
        p->buf[6] >= 8 && p->buf[6] <= 28)
        return AVPROBE_SCORE_EXTENSION;
    return 0;
}
