
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int FLAC_CHMODE_MID_SIDE ;
 int FLAC_MAX_CHANNELS ;

__attribute__((used)) static int raw_flac_probe(const AVProbeData *p)
{
    if ((p->buf[2] & 0xF0) == 0)
        return 0;
    if ((p->buf[2] & 0x0F) == 0x0F)
        return 0;
    if ((p->buf[3] & 0xF0) >= FLAC_MAX_CHANNELS + FLAC_CHMODE_MID_SIDE << 4)

        return 0;
    if ((p->buf[3] & 0x06) == 0x06)
        return 0;
    if ((p->buf[3] & 0x01) == 0x01)
        return 0;
    return AVPROBE_SCORE_EXTENSION / 4 + 1;
}
