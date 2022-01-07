
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 scalar_t__ ANIM_TAG ;
 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RL16 (int *) ;
 scalar_t__ AV_RL32 (int *) ;
 scalar_t__ LPF_TAG ;

__attribute__((used)) static int probe(const AVProbeData *p)
{

    if (AV_RL32(&p->buf[0]) == LPF_TAG &&
        AV_RL32(&p->buf[16]) == ANIM_TAG &&
        AV_RL16(&p->buf[20]) && AV_RL16(&p->buf[22]))
        return AVPROBE_SCORE_MAX;
    return 0;
}
