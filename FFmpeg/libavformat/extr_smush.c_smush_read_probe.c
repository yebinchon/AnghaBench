
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

__attribute__((used)) static int smush_read_probe(const AVProbeData *p)
{
    if (((AV_RL32(p->buf) == MKTAG('S', 'A', 'N', 'M') &&
          AV_RL32(p->buf + 8) == MKTAG('S', 'H', 'D', 'R')) ||
         (AV_RL32(p->buf) == MKTAG('A', 'N', 'I', 'M') &&
          AV_RL32(p->buf + 8) == MKTAG('A', 'H', 'D', 'R')))) {
        return AVPROBE_SCORE_MAX;
    }

    return 0;
}
