
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RL32 (int *) ;
 scalar_t__ HNM4_TAG ;

__attribute__((used)) static int hnm_probe(const AVProbeData *p)
{
    if (p->buf_size < 4)
        return 0;



    if (AV_RL32(&p->buf[0]) == HNM4_TAG)
        return AVPROBE_SCORE_MAX;

    return 0;
}
