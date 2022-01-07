
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_3__ {char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;

__attribute__((used)) static inline int pnm_probe(const AVProbeData *p)
{
    const uint8_t *b = p->buf;

    while (b[2] == '\r')
        b++;
    if (b[2] == '\n' && (b[3] == '#' || (b[3] >= '0' && b[3] <= '9')))
        return AVPROBE_SCORE_EXTENSION + 2;
    return 0;
}
