
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
 int MLV_VERSION ;
 int memcmp (scalar_t__,int ,int) ;

__attribute__((used)) static int probe(const AVProbeData *p)
{
    if (AV_RL32(p->buf) == MKTAG('M','L','V','I') &&
        AV_RL32(p->buf + 4) >= 52 &&
        !memcmp(p->buf + 8, MLV_VERSION, 5))
        return AVPROBE_SCORE_MAX;
    return 0;
}
