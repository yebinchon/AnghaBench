
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ memcmp (int ,char*,int) ;

__attribute__((used)) static int svag_probe(const AVProbeData *p)
{
    if (memcmp(p->buf, "Svag", 4))
        return 0;

    return AVPROBE_SCORE_MAX;
}
