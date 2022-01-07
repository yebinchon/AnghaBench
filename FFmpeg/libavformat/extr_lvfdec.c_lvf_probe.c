
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AVPROBE_SCORE_MAX ;
 int AV_RL32 (scalar_t__) ;
 int MKTAG (char,char,float,float) ;

__attribute__((used)) static int lvf_probe(const AVProbeData *p)
{
    if (AV_RL32(p->buf) != MKTAG('L', 'V', 'F', 'F'))
        return 0;

    if (!AV_RL32(p->buf + 16) || AV_RL32(p->buf + 16) > 256)
        return AVPROBE_SCORE_MAX / 8;

    return AVPROBE_SCORE_EXTENSION;
}
