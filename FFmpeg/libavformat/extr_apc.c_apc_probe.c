
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static int apc_probe(const AVProbeData *p)
{
    if (!strncmp(p->buf, "CRYO_APC", 8))
        return AVPROBE_SCORE_MAX;

    return 0;
}
