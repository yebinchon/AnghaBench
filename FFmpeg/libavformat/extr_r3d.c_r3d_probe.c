
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RL32 (scalar_t__) ;
 scalar_t__ MKTAG (char,char,char,char) ;

__attribute__((used)) static int r3d_probe(const AVProbeData *p)
{
    if (AV_RL32(p->buf + 4) == MKTAG('R','E','D','1'))
        return AVPROBE_SCORE_MAX;
    return 0;
}
