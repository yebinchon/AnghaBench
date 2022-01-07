
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RB64 (int const*) ;
 scalar_t__ AV_RL32 (int const*) ;

__attribute__((used)) static int dds_probe(const AVProbeData *p)
{
    const uint8_t *b = p->buf;

    if ( AV_RB64(b) == 0x444453207c000000
        && AV_RL32(b + 8)
        && AV_RL32(b + 12))
        return AVPROBE_SCORE_MAX - 1;
    return 0;
}
