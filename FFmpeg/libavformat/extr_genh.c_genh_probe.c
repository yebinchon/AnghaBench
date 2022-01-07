
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RL32 (scalar_t__) ;
 int MKTAG (char,char,char,char) ;

__attribute__((used)) static int genh_probe(const AVProbeData *p)
{
    if (AV_RL32(p->buf) != MKTAG('G','E','N','H'))
        return 0;
    if (AV_RL32(p->buf+4) <= 0 || AV_RL32(p->buf+4) > 0xFFFF)
        return 0;

    return AVPROBE_SCORE_MAX / 3 * 2;
}
