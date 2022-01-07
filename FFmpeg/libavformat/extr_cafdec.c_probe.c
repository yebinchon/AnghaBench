
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RB16 (int *) ;
 scalar_t__ AV_RB32 (int *) ;
 scalar_t__ MKBETAG (char,char,float,float) ;

__attribute__((used)) static int probe(const AVProbeData *p)
{
    if (AV_RB32(p->buf) == MKBETAG('c','a','f','f') && AV_RB16(&p->buf[4]) == 1)
        return AVPROBE_SCORE_MAX;
    return 0;
}
