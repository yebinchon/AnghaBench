
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RL32 (scalar_t__*) ;
 scalar_t__** avi_headers ;

__attribute__((used)) static int avi_probe(const AVProbeData *p)
{
    int i;


    for (i = 0; avi_headers[i][0]; i++)
        if (AV_RL32(p->buf ) == AV_RL32(avi_headers[i] ) &&
            AV_RL32(p->buf + 8) == AV_RL32(avi_headers[i] + 4))
            return AVPROBE_SCORE_MAX;

    return 0;
}
