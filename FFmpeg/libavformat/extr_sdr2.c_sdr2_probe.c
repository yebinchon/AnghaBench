
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 scalar_t__ AV_RL32 (int ) ;
 scalar_t__ MKTAG (char,char,char,int) ;

__attribute__((used)) static int sdr2_probe(const AVProbeData *p)
{
    if (AV_RL32(p->buf) != MKTAG('S', 'R', 'A', 1))
        return 0;

    return AVPROBE_SCORE_EXTENSION;
}
