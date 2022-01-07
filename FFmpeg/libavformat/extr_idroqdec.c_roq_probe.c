
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RL16 (int *) ;
 int AV_RL32 (int *) ;
 scalar_t__ RoQ_MAGIC_NUMBER ;

__attribute__((used)) static int roq_probe(const AVProbeData *p)
{
    if ((AV_RL16(&p->buf[0]) != RoQ_MAGIC_NUMBER) ||
        (AV_RL32(&p->buf[2]) != 0xFFFFFFFF))
        return 0;

    return AVPROBE_SCORE_MAX;
}
