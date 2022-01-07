
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RL32 (scalar_t__) ;
 int MKTAG (char,float,char,char) ;

__attribute__((used)) static int dfa_probe(const AVProbeData *p)
{
    if (p->buf_size < 4 || AV_RL32(p->buf) != MKTAG('D', 'F', 'I', 'A'))
        return 0;

    if (AV_RL32(p->buf + 16) != 0x80)
        return AVPROBE_SCORE_MAX / 4;

    return AVPROBE_SCORE_MAX;
}
