
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_3__ {char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;

__attribute__((used)) static int kux_probe(const AVProbeData *p)
{
    const uint8_t *d = p->buf;

    if (d[0] == 'K' &&
        d[1] == 'D' &&
        d[2] == 'K' &&
        d[3] == 0 &&
        d[4] == 0) {
        return AVPROBE_SCORE_EXTENSION + 1;
    }
    return 0;
}
