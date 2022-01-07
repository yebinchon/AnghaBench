
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buf; int buf_size; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RL32 (int*) ;
 int RIFF_TAG ;
 int WAVE_TAG ;

__attribute__((used)) static int probe(const AVProbeData *p)
{
    int i;

    if ((AV_RL32(&p->buf[0]) != RIFF_TAG) ||
        (AV_RL32(&p->buf[8]) != WAVE_TAG) ||
        (AV_RL32(&p->buf[16]) != 16))
    return 0;


    if (p->buf_size<512)
        return 0;

    for(i=44; i<256; i++)
        if(p->buf[i])
            return 0;

    if(p->buf[256]!=0x84)
        return 0;

    for(i=264; i<512; i++)
        if(p->buf[i])
            return 0;

    return AVPROBE_SCORE_MAX;
}
