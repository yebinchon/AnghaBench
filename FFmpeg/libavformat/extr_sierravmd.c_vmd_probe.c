
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AV_RL16 (int *) ;
 int VMD_HEADER_SIZE ;

__attribute__((used)) static int vmd_probe(const AVProbeData *p)
{
    int w, h, sample_rate;
    if (p->buf_size < 806)
        return 0;


    if (AV_RL16(&p->buf[0]) != VMD_HEADER_SIZE - 2)
        return 0;
    w = AV_RL16(&p->buf[12]);
    h = AV_RL16(&p->buf[14]);
    sample_rate = AV_RL16(&p->buf[804]);
    if ((!w || w > 2048 || !h || h > 2048) &&
        sample_rate != 22050)
        return 0;


    return AVPROBE_SCORE_EXTENSION;
}
