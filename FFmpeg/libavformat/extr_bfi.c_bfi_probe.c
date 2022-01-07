
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RL32 (int ) ;
 scalar_t__ MKTAG (char,float,char,char) ;

__attribute__((used)) static int bfi_probe(const AVProbeData * p)
{

    if (AV_RL32(p->buf) == MKTAG('B', 'F', '&', 'I'))
        return AVPROBE_SCORE_MAX;
    else
        return 0;
}
