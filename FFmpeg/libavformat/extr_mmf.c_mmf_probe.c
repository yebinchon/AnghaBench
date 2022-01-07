
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;

__attribute__((used)) static int mmf_probe(const AVProbeData *p)
{

    if (p->buf[0] == 'M' && p->buf[1] == 'M' &&
        p->buf[2] == 'M' && p->buf[3] == 'D' &&
        p->buf[8] == 'C' && p->buf[9] == 'N' &&
        p->buf[10] == 'T' && p->buf[11] == 'I')
        return AVPROBE_SCORE_MAX;
    else
        return 0;
}
