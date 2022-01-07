
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RL32 (scalar_t__) ;
 scalar_t__ TAG_SIFF ;
 scalar_t__ TAG_SOUN ;
 scalar_t__ TAG_VBV1 ;

__attribute__((used)) static int siff_probe(const AVProbeData *p)
{
    uint32_t tag = AV_RL32(p->buf + 8);

    if (AV_RL32(p->buf) != TAG_SIFF ||
        (tag != TAG_VBV1 && tag != TAG_SOUN))
        return 0;
    return AVPROBE_SCORE_MAX;
}
