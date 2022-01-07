
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RL32 (char*) ;
 scalar_t__ AV_RL64 (char*) ;

__attribute__((used)) static int qcp_probe(const AVProbeData *pd)
{
    if (AV_RL32(pd->buf ) == AV_RL32("RIFF") &&
        AV_RL64(pd->buf+8) == AV_RL64("QLCMfmt "))
        return AVPROBE_SCORE_MAX;
    return 0;
}
