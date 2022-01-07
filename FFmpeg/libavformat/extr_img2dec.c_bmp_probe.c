
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AV_RB16 (int const*) ;
 int AV_RL32 (int const*) ;
 int AV_RN32 (int const*) ;

__attribute__((used)) static int bmp_probe(const AVProbeData *p)
{
    const uint8_t *b = p->buf;
    int ihsize;

    if (AV_RB16(b) != 0x424d)
        return 0;

    ihsize = AV_RL32(b+14);
    if (ihsize < 12 || ihsize > 255)
        return 0;

    if (!AV_RN32(b + 6)) {
        return AVPROBE_SCORE_EXTENSION + 1;
    }
    return AVPROBE_SCORE_EXTENSION / 4;
}
