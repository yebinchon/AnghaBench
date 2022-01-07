
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int ISS_SIG ;
 int ISS_SIG_LEN ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static int iss_probe(const AVProbeData *p)
{
    if (strncmp(p->buf, ISS_SIG, ISS_SIG_LEN))
        return 0;

    return AVPROBE_SCORE_MAX;
}
