
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RL32 (int*) ;

__attribute__((used)) static int cin_probe(const AVProbeData *p)
{

    if (AV_RL32(&p->buf[0]) != 0x55AA0000)
        return 0;


    if (AV_RL32(&p->buf[12]) != 22050 || p->buf[16] != 16 || p->buf[17] != 0)
        return 0;

    return AVPROBE_SCORE_MAX;
}
