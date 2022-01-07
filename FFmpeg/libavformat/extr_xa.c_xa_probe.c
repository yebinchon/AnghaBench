
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AV_RL16 (scalar_t__) ;
 int AV_RL32 (scalar_t__) ;




__attribute__((used)) static int xa_probe(const AVProbeData *p)
{
    int channels, srate, bits_per_sample;
    if (p->buf_size < 24)
        return 0;
    switch(AV_RL32(p->buf)) {
    case 130:
    case 129:
    case 128:
        break;
    default:
        return 0;
    }
    channels = AV_RL16(p->buf + 10);
    srate = AV_RL32(p->buf + 12);
    bits_per_sample = AV_RL16(p->buf + 22);
    if (!channels || channels > 8 || !srate || srate > 192000 ||
        bits_per_sample < 4 || bits_per_sample > 32)
        return 0;
    return AVPROBE_SCORE_EXTENSION;
}
