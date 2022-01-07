
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; scalar_t__* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RL16 (scalar_t__*) ;

__attribute__((used)) static int probe(const AVProbeData *p)
{
    int i;
    int index = 1;
    if (p->buf_size < 16)
        return 0;
    for (i = 0; i < 16; i += 4) {
        if (AV_RL16(p->buf + i) != index || !p->buf[i + 2] || !p->buf[i + 3])
            return 0;
        index += p->buf[i + 2];
    }
    return AVPROBE_SCORE_MAX;
}
