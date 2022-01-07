
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int buf_size; int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RB16 (int const*) ;
 int AV_RB64 (int const*) ;

__attribute__((used)) static int qdraw_probe(const AVProbeData *p)
{
    const uint8_t *b = p->buf;

    if ( p->buf_size >= 528
        && (AV_RB64(b + 520) & 0xFFFFFFFFFFFF) == 0x001102ff0c00
        && AV_RB16(b + 520)
        && AV_RB16(b + 518))
        return AVPROBE_SCORE_MAX * 3 / 4;
    if ( (AV_RB64(b + 8) & 0xFFFFFFFFFFFF) == 0x001102ff0c00
        && AV_RB16(b + 8)
        && AV_RB16(b + 6))
        return AVPROBE_SCORE_EXTENSION / 4;
    return 0;
}
