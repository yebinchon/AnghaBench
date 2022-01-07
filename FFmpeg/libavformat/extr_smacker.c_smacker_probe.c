
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 unsigned int AV_RL32 (scalar_t__) ;
 unsigned int MKTAG (char,char,char,char) ;

__attribute__((used)) static int smacker_probe(const AVProbeData *p)
{
    if ( AV_RL32(p->buf) != MKTAG('S', 'M', 'K', '2')
        && AV_RL32(p->buf) != MKTAG('S', 'M', 'K', '4'))
        return 0;

    if (AV_RL32(p->buf+4) > 32768U || AV_RL32(p->buf+8) > 32768U)
        return AVPROBE_SCORE_MAX/4;

    return AVPROBE_SCORE_MAX;
}
