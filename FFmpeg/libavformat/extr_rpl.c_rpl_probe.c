
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int RPL_SIGNATURE ;
 int RPL_SIGNATURE_SIZE ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static int rpl_probe(const AVProbeData *p)
{
    if (memcmp(p->buf, RPL_SIGNATURE, RPL_SIGNATURE_SIZE))
        return 0;

    return AVPROBE_SCORE_MAX;
}
