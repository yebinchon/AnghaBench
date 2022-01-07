
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 scalar_t__ AA_MAGIC ;
 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RB32 (int *) ;

__attribute__((used)) static int aa_probe(const AVProbeData *p)
{
    uint8_t *buf = p->buf;


    if (AV_RB32(buf+4) != AA_MAGIC)
        return 0;

    return AVPROBE_SCORE_MAX / 2;
}
