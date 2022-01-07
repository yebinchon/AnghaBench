
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RL16 (int*) ;
 scalar_t__ AV_RL32 (int*) ;
 scalar_t__ PROBE_MIN_AUDIO_SIZE ;
 scalar_t__ PROBE_MIN_SAMPLE_RATE ;
 scalar_t__ TMV_TAG ;

__attribute__((used)) static int tmv_probe(const AVProbeData *p)
{
    if (AV_RL32(p->buf) == TMV_TAG &&
        AV_RL16(p->buf+4) >= PROBE_MIN_SAMPLE_RATE &&
        AV_RL16(p->buf+6) >= PROBE_MIN_AUDIO_SIZE &&
               !p->buf[8] &&
                p->buf[9] &&
                p->buf[10])
        return AVPROBE_SCORE_MAX /
            ((p->buf[9] == 40 && p->buf[10] == 25) ? 1 : 4);
    return 0;
}
