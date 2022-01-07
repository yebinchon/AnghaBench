
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RB32 (scalar_t__) ;
 int MAIN_STARTCODE ;

__attribute__((used)) static int nut_probe(const AVProbeData *p)
{
    int i;

    for (i = 0; i < p->buf_size-8; i++) {
        if (AV_RB32(p->buf+i) != MAIN_STARTCODE>>32)
            continue;
        if (AV_RB32(p->buf+i+4) == (MAIN_STARTCODE & 0xFFFFFFFF))
            return AVPROBE_SCORE_MAX;
    }
    return 0;
}
