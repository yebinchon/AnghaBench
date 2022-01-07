
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RL16 (scalar_t__) ;
 scalar_t__ AV_RL32 (scalar_t__) ;
 scalar_t__ MKTAG (char,char,char,float) ;

__attribute__((used)) static int probe(const AVProbeData *p)
{
    if (AV_RL32(p->buf) == MKTAG('D','K','I','F')
        && !AV_RL16(p->buf+4) && AV_RL16(p->buf+6) == 32)
        return AVPROBE_SCORE_MAX-2;

    return 0;
}
