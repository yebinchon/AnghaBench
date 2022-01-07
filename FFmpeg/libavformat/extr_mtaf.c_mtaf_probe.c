
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RL32 (scalar_t__) ;
 scalar_t__ MKTAG (char,char,char,char) ;

__attribute__((used)) static int mtaf_probe(const AVProbeData *p)
{
    if (p->buf_size < 0x44)
        return 0;

    if (AV_RL32(p->buf) != MKTAG('M','T','A','F') ||
        AV_RL32(p->buf + 0x40) != MKTAG('H','E','A','D'))
        return 0;

    return AVPROBE_SCORE_MAX;
}
