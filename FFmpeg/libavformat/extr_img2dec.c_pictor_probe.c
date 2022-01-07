
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AV_RL16 (int const*) ;

__attribute__((used)) static int pictor_probe(const AVProbeData *p)
{
    const uint8_t *b = p->buf;

    if (AV_RL16(b) == 0x1234)
        return AVPROBE_SCORE_EXTENSION / 4;
    return 0;
}
