
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AV_RB16 (scalar_t__) ;
 scalar_t__ AV_RL32 (scalar_t__) ;
 scalar_t__ MKTAG (char,char,char,char) ;

__attribute__((used)) static int avr_probe(const AVProbeData *p)
{
    if (AV_RL32(p->buf) != MKTAG('2', 'B', 'I', 'T'))
        return 0;

    if (!AV_RB16(p->buf+12) || AV_RB16(p->buf+12) > 256)
        return AVPROBE_SCORE_EXTENSION/2;
    if (AV_RB16(p->buf+14) > 256)
        return AVPROBE_SCORE_EXTENSION/2;

    return AVPROBE_SCORE_EXTENSION;
}
