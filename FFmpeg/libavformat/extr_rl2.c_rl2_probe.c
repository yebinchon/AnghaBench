
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RB32 (int *) ;
 scalar_t__ FORM_TAG ;
 scalar_t__ RLV2_TAG ;
 scalar_t__ RLV3_TAG ;

__attribute__((used)) static int rl2_probe(const AVProbeData *p)
{

    if(AV_RB32(&p->buf[0]) != FORM_TAG)
        return 0;

    if(AV_RB32(&p->buf[8]) != RLV2_TAG &&
        AV_RB32(&p->buf[8]) != RLV3_TAG)
        return 0;

    return AVPROBE_SCORE_MAX;
}
