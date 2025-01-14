
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RL32 (scalar_t__) ;
 scalar_t__ AV_RN32 (scalar_t__) ;
 int MKTAG (char,char,char,float) ;

__attribute__((used)) static int epaf_probe(const AVProbeData *p)
{
    if (((AV_RL32(p->buf) == MKTAG('f','a','p',' ') &&
          AV_RL32(p->buf + 8) == 1) ||
         (AV_RL32(p->buf) == MKTAG(' ','p','a','f') &&
          AV_RN32(p->buf + 8) == 0)) &&
       !AV_RN32(p->buf + 4) && AV_RN32(p->buf + 12) &&
        AV_RN32(p->buf + 20))
        return AVPROBE_SCORE_MAX / 4 * 3;
    return 0;
}
