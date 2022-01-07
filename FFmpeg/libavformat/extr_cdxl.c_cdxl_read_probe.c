
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf_size; int* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AV_RB16 (int*) ;
 scalar_t__ AV_RB32 (int*) ;
 scalar_t__ AV_RN16 (int*) ;
 scalar_t__ AV_RN32 (int*) ;
 scalar_t__ AV_RN64 (int*) ;
 scalar_t__ CDXL_HEADER_SIZE ;

__attribute__((used)) static int cdxl_read_probe(const AVProbeData *p)
{
    int score = AVPROBE_SCORE_EXTENSION + 10;

    if (p->buf_size < CDXL_HEADER_SIZE)
        return 0;


    if (AV_RN64(&p->buf[24]) || AV_RN16(&p->buf[10]))
        return 0;


    if (p->buf[0] != 1)
        return 0;


    if (AV_RB16(&p->buf[20]) > 512)
        return 0;


    if (p->buf[18] || !p->buf[19])
        return 0;


    if (!AV_RN16(&p->buf[14]) || !AV_RN16(&p->buf[16]))
        return 0;


    if (AV_RB32(&p->buf[2]) < AV_RB16(&p->buf[22]) + AV_RB16(&p->buf[20]) + CDXL_HEADER_SIZE)
        return 0;


    if (AV_RN32(&p->buf[6]))
        score /= 2;


    if (AV_RB16(&p->buf[12]) != 1)
        score /= 2;

    return score;
}
