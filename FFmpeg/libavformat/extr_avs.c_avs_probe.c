
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_3__ {char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;

__attribute__((used)) static int avs_probe(const AVProbeData * p)
{
    const uint8_t *d;

    d = p->buf;
    if (d[0] == 'w' && d[1] == 'W' && d[2] == 0x10 && d[3] == 0)


        return AVPROBE_SCORE_EXTENSION + 5;

    return 0;
}
