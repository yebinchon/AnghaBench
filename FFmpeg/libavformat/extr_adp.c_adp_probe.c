
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {int buf_size; scalar_t__* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;

__attribute__((used)) static int adp_probe(const AVProbeData *p)
{
    int i, changes = 0;
    uint8_t last = 0;

    if (p->buf_size < 32)
        return 0;

    for (i = 0; i < p->buf_size - 3; i+=32) {
        if (p->buf[i] != p->buf[i+2] || p->buf[i+1] != p->buf[i+3])
            return 0;
        if (p->buf[i] != last)
            changes++;
        last = p->buf[i];
    }
    if (changes <= 1)
        return 0;

    return p->buf_size < 260 ? 1 : AVPROBE_SCORE_MAX / 4;
}
