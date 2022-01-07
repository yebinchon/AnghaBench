
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; scalar_t__* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;

__attribute__((used)) static int seq_probe(const AVProbeData *p)
{
    int i;

    if (p->buf_size < 258)
        return 0;



    for (i = 0; i < 256; i++)
        if (p->buf[i])
            return 0;

    if(p->buf[256]==0 && p->buf[257]==0)
        return 0;


    return AVPROBE_SCORE_MAX / 4;
}
