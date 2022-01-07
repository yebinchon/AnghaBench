
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 unsigned int AV_RL32 (int *) ;
 int HUFFMAN_TABLE_SIZE ;

__attribute__((used)) static int idcin_probe(const AVProbeData *p)
{
    unsigned int number, sample_rate;
    unsigned int w, h;
    int i;
    if (p->buf_size < 20 + HUFFMAN_TABLE_SIZE + 12)
        return 0;


    w = AV_RL32(&p->buf[0]);
    if ((w == 0) || (w > 1024))
       return 0;


    h = AV_RL32(&p->buf[4]);
    if ((h == 0) || (h > 1024))
       return 0;


    sample_rate = AV_RL32(&p->buf[8]);
    if (sample_rate && (sample_rate < 8000 || sample_rate > 48000))
        return 0;


    number = AV_RL32(&p->buf[12]);
    if (number > 2 || sample_rate && !number)
        return 0;


    number = AV_RL32(&p->buf[16]);
    if (number > 2 || sample_rate && !number)
        return 0;

    i = 20 + HUFFMAN_TABLE_SIZE;
    if (AV_RL32(&p->buf[i]) == 1)
        i += 768;

    if (i+12 > p->buf_size || AV_RL32(&p->buf[i+8]) != w*h)
        return 1;


    return AVPROBE_SCORE_EXTENSION;
}
