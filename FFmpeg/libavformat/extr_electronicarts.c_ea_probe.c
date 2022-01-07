
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ AVProbeData ;



 int AVPROBE_SCORE_MAX ;
 int AV_RL32 (int *) ;
 unsigned int av_bswap32 (unsigned int) ;


__attribute__((used)) static int ea_probe(const AVProbeData *p)
{
    unsigned big_endian, size;

    switch (AV_RL32(&p->buf[0])) {
    case 136:
    case 131:
    case 130:
    case 129:
    case 128:
    case 135:
    case 134:
    case 132:
    case 133:
    case 137:
        break;
    default:
        return 0;
    }
    size = AV_RL32(&p->buf[4]);
    big_endian = size > 0x000FFFFF;
    if (big_endian)
        size = av_bswap32(size);
    if (size > 0xfffff || size < 8)
        return 0;

    return AVPROBE_SCORE_MAX;
}
