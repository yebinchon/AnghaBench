
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AV_RL16 (int *) ;
 scalar_t__ AV_RL32 (int *) ;
 scalar_t__ MKTAG (char,char,char,char) ;

__attribute__((used)) static int tta_probe(const AVProbeData *p)
{
    if (AV_RL32(&p->buf[0]) == MKTAG('T', 'T', 'A', '1') &&
        (AV_RL16(&p->buf[4]) == 1 || AV_RL16(&p->buf[4]) == 2) &&
        AV_RL16(&p->buf[6]) > 0 &&
        AV_RL16(&p->buf[8]) > 0 &&
        AV_RL32(&p->buf[10]) > 0)
        return AVPROBE_SCORE_EXTENSION + 30;
    return 0;
}
